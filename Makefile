help_info:
	@echo "";
	@echo "Usage:\t make [TASK]";
	@echo "\t make install";
	@echo "";
	@echo "\t [TASK]                   Description";
	@echo "\t ======================================================================================";
	@echo "\t help                     Show this info message.";
	@echo "\t install                  Install plugins and setup configuration files.";
	@echo "\t update                   Update plugins.";
	@echo "";

help: help_info
install:
	@bash scripts/symlink_zshrc.sh
	@bash scripts/spaceship-prompt/install_spaceship_prompt.sh
	@bash scripts/zsh-autosuggestions/install_autosuggestions.sh
	@bash scripts/zsh-syntax-highlighting/install_syntax_highlighting.sh
update:
	@bash scripts/update_repo.sh
	@printf "\033[0;93m==> %s\n\033[0m" "Checking if plugins need updating..."
	@bash scripts/spaceship-prompt/update_spaceship_prompt.sh
	@bash scripts/zsh-autosuggestions/update_autosuggestions.sh
	@bash scripts/zsh-syntax-highlighting/update_syntax_highlighting.sh
