# Makefile to install various programs

help:
	@echo "Good luck..."

emacs:
	@echo "Configuring emacs..."
	@stow -R emacs 2>&1 | grep -v $(STOW_BUG) || :
