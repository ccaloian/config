# Update tmux plugins using git subtree

.PHONY: update-catppuccin
update-catppuccin:
	@echo "Updating Catppuccin theme..."
	@git fetch catppuccin-tmux main
	@git subtree pull --prefix tmux/tmux/plugins/catppuccin-tmux catppuccin-tmux main --squash
	@echo "Catppuccin theme updated."

.PHONY: update-tpm
update-tpm:
	@echo "Updating Tmux Plugin Manager (TPM)..."
	@git fetch tpm master
	@git subtree pull --prefix tmux/tmux/plugins/tpm tpm master --squash
	@echo "TPM updated."

.PHONY: update-vim-tmux-navigator
update-vim-tmux-navigator:
	@echo "Updating vim-tmux-navigator..."
	@git fetch vim-tmux-navigator master
	@git subtree pull --prefix tmux/tmux/plugins/vim-tmux-navigator vim-tmux-navigator master --squash
	@echo "vim-tmux-navigator updated."
