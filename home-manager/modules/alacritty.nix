{pkgs, ... }:
{
programs.alacritty = {
		enable = true;
		settings = {
			env.TERM = "xterm-256color";
			window.padding = {
				x = 10;
				y = 10;
			};
			window.decorations = "none";
			window.opacity = 0.9;
			scrolling.history = 1000;
			font = {
				normal = {
					family = "JetBrainsMono Nerd Font";
					style = "Regular";
				};
				bold = {
					family = "JetBrainsMono Nerd Font";
					style = "Bold";
				};
				italic = {
					family = "JetBrainsMono Nerd Font";
					style = "Italic";
				};
				size = 10;
			};
		};
	};
}
