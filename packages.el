;;; packages.el - quickrun layer file for Spacemacs
;;
;; Copyright (c) 2018 Seong Yong-ju
;;
;; Author: Seong Yong-ju <sei40kr@gmail.com>
;; URL: https://github.com/sei40kr/dotfiles
;;
;; This file is not part of GNU Emacs
;;
;;; License: MIT

(setq spacemacs-quickrun-packages
      '(
        golden-ratio
        popwin
        quickrun))

(defun spacemacs-quickrun/post-init-golden-ratio ()
  (eval-after-load 'golden-ratio
    '(add-to-list 'golden-ratio-exclude-buffer-names "*quickrun*")))

(defun spacemacs-quickrun/post-init-popwin ()
  (push
    '("*quickrun*"
       :dedicated t
       :position bottom
       :stick t
       :noselect nil
       :height 0.4)
    popwin:special-display-config))

(defun spacemacs-quickrun/init-quickrun ()
  (use-package quickrun
    :defer t
    :init
    (progn
      (setq
        quickrun-focus-p nil
        quickrun-option-shebang t)
      (spacemacs/declare-prefix "fq" "quickrun")
      (spacemacs/set-leader-keys
        "fqq" #'spacemacs/quickrun
        "fqa" #'spacemacs/quickrun-with-arg
        "fqs" #'spacemacs/quickrun-shell
        "fqh" #'helm-quickrun))))
