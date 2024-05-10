;; Have packages available
(package-initialize)

;; Load the publishing system
(require 'ox-publish)

;; Make sure htmlize is available
(require 'font-lock)
(require 'htmlize)

;; Export variables 
(setq org-export-with-sub-superscripts nil
		org-export-with-section-numbers nil
		org-export-with-toc nil
		org-export-headline-levels 10)

;; Define the publishing project
(setq org-publish-project-alist
      '(("noweirdtrick"
		 :base-directory "./src/"
		 :publishing-directory "./docs/"
		 ;; :publishing-function 'org-html-publish-to-html
		 ;; :base-extension 'any
		 ;; :preparation-function '()
		 ;; :completion-function '()
		 :html-head "<link rel=\"stylesheet\" href=\"https://latex.now.sh/style.css\">"
		 :html-validation-link nil)))

;; Generate the site output
(org-publish-all t)

(message "Build complete!")
