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
	@bash scripts/fetch_spaceship_prompt.sh
	@bash scripts/fetch_autosuggestions.sh
	@bash scripts/fetch_syntax_highlighting.sh
	@bash scripts/fetch_you_should_use.sh
	@bash scripts/fetch_font.sh
	@bash scripts/enable_touch_id_in_iterm.sh
update:
	@bash scripts/update_repo.sh
	@printf "\033[0;93m==> %s\n\033[0m" "Checking if plugins need updating..."
	@bash scripts/fetch_spaceship_prompt.sh
	@bash scripts/fetch_autosuggestions.sh
	@bash scripts/fetch_syntax_highlighting.sh
	@bash scripts/fetch_you_should_use.sh
	@bash scripts/fetch_font.sh
	@bash scripts/enable_touch_id_in_iterm.sh
