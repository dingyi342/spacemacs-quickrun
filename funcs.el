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

;; cf https://github.com/Codas/spacemacs-config/blob/master/quickrun/packages.el

(defun spacemacs/quickrun ()
  (interactive)
  (if (eq evil-state 'visual)
    (quickrun-region (region-beginning) (region-end))
    (quickrun)))
