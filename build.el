;; Have packages available
(package-initialize)

;; Load the publishing system
(require 'ox-publish)

;; Make sure htmlize is available
(require 'font-lock)
(require 'htmlize)

;; Define the publishing project
(setq org-publish-project-alist
      '(("noweirdtrick"
		 :base-directory "./src/"
		 :publishing-directory "./docs/"
		 :publishing-function org-html-publish-to-html
		 :base-extension any
		 ;; :preparation-function '()
		 ;; :completion-function '()
		 :html-head "<link rel=\"stylesheet\" href=\"https://latex.now.sh/style.css\">"
		 :html-validation-link nil
		 :section-numbers nil
		 :with-sub-superscript nil
		 :with-toc t
		 :with-creator nil
		 :with-author nil
		 :headline-levels 10)))

;; Generate the site output
(org-publish-all)

(message "Build complete!")
