#lang racket
(require 2htdp/image)

(define BASE-HEIGHT 60)
(define BASE-WIDTH 3)
(define ANGLE 30)
(define SCALE-FACTOR 0.7)

;; helper to compute horizontal shift for branch placement
(define (branch-offset)
  (* BASE-HEIGHT SCALE-FACTOR (sin (degrees->radians ANGLE))))

;; draw-tree : Number -> Image
(define (draw-tree depth)
  (cond
    [(zero? depth)
     (rectangle BASE-WIDTH BASE-HEIGHT "solid" "green")]
    [else
     (define trunk (rectangle BASE-WIDTH BASE-HEIGHT "solid" "brown"))
     (define smaller (scale SCALE-FACTOR (draw-tree (- depth 1))))
     (define left (rotate ANGLE smaller))
     (define right (rotate (- ANGLE) smaller))
     (define dx (branch-offset))

     (define with-left (overlay/xy left dx 0 (empty-scene 1 1)))
     (define both (overlay/xy right (- dx) 0 with-left))

     (above both trunk)]))
