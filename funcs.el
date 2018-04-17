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

;; quickrun

(defun spacemacs//quickrun-may-ask-stdin-file ()
  (let (
         (executed-file (file-name-nondirectory (buffer-file-name)))
         new-stdin-file
         (default-stdin-file-extension
           (default-value 'quickrun-input-file-extension)))
    (let (
           (stdin-files (directory-files
                          default-directory
                          nil
                          (format "%s%s*"
                            executed-file
                            default-stdin-file-extension))))
      (if (<= 2 (length stdin-files))
        (setq new-stdin-file
          (helm
            :sources (helm-build-sync-source "Input files"
                       :candidates stdin-files)
            :input (concat executed-file default-stdin-file-extension))))
      (if new-stdin-file
        (setq-local quickrun-input-file-extension
          (file-name-extension new-stdin-file t))))))

(defun spacemacs/quickrun ()
  (interactive)
  (require 'quickrun)
  (spacemacs//quickrun-may-ask-stdin-file)
  (if (eq evil-state 'visual)
    (quickrun-region (region-beginning) (region-end))
    (quickrun)))

(defun spacemacs/quickrun-with-arg ()
  (interactive)
  (require 'quickrun)
  (spacemacs//quickrun-may-ask-stdin-file)
  (quickrun-with-arg))

(defun spacemacs/quickrun-shell ()
  (interactive)
  (require 'quickrun)
  (setq-local quickrun-input-file-extension
    (default-value 'quickrun-input-file-extension))
  (quickrun-shell))
