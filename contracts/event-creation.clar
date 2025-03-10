;; Event Creation Contract

;; Data Maps
(define-map events
  { event-id: uint }
  {
    creator: principal,
    description: (string-ascii 256),
    options: (list 10 (string-ascii 64)),
    expiration: uint,
    resolved: bool
  }
)

(define-data-var event-nonce uint u0)

;; Public Functions
(define-public (create-event (description (string-ascii 256)) (options (list 10 (string-ascii 64))) (expiration uint))
  (let
    (
      (event-id (var-get event-nonce))
    )
    (try! (assert-expiration-valid expiration))
    (try! (assert-options-valid options))
    (map-set events
      { event-id: event-id }
      {
        creator: tx-sender,
        description: description,
        options: options,
        expiration: expiration,
        resolved: false
      }
    )
    (var-set event-nonce (+ event-id u1))
    (ok event-id)
  )
)

(define-read-only (get-event (event-id uint))
  (match (map-get? events { event-id: event-id })
    event (ok event)
    (err u404)
  )
)

;; Private Functions
(define-private (assert-expiration-valid (expiration uint))
  (if (> expiration block-height)
    (ok true)
    (err u400)
  )
)

(define-private (assert-options-valid (options (list 10 (string-ascii 64))))
  (if (and (> (len options) u1) (<= (len options) u10))
    (ok true)
    (err u401)
  )
)

