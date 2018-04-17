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

(defun spacemacs/quickrun-may-ask-stdin ()
  (let (
         (stdin-files
           (directory-files
             default-directory
             nil
             (concat (quickrun--stdin-file-name) "*")))
         new-stdin-file)
    (when (<= 2 (length stdin-files))
      (setq new-stdin-file
        (save-window-excursion
          (helm
            :sources 'helm-source-files-in-current-dir
            :input (concat
                     quickrun--executed-file
                     (default-value 'quickrun-input-file-extension)))))
      (when new-stdin-file
        (setq-local quickrun-input-file-extension
          (concat "." (file-name-extension (car new-stdin-file))))))))


;; cf https://github.com/Codas/spacemacs-config/blob/master/quickrun/packages.el

(defun spacemacs/quickrun ()
  (interactive)
  (spacemacs/quickrun-may-ask-stdin)
  (if (eq evil-state 'visual)
    (quickrun-region (region-beginning) (region-end))
    (quickrun)))
