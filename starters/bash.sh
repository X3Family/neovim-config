#!/bin/bash

# Define text formatting escape sequences
bold=$(tput bold)
normal=$(tput sgr0)
red=$(tput setaf 1)
green=$(tput setaf 2)
blue=$(tput setaf 4)

# Function to display ASCII art for each theme
display_theme_info() {
    clear
    case $1 in
        "Catpuccin (mocha)")
            echo "${bold}${blue}Catpuccin (mocha)${normal}"
            echo ""
            echo "Repository: https://github.com/TheGreatagen/Catpuccino.nvim"
            echo ""
            echo "This theme features warm, cozy colors reminiscent of a delicious mocha."
            ;;
        "rose pine")
            echo "${bold}${blue}rose pine${normal}"
            echo ""
            echo "Repository: https://github.com/TheGreatagen/rose-pine.nvim"
            echo ""
            echo "A calming theme inspired by the colors of nature, with soft pinks and deep greens."
            ;;
        "Tokyo Night (night)")
            echo "${bold}${blue}Tokyo Night (night)${normal}"
            echo ""
            echo "Repository: https://github.com/TheGreatagen/tokyo-night.nvim"
            echo ""
            echo "A sleek, dark theme with vibrant pops of color, evoking the energy of Tokyo nightlife."
            ;;
    esac
    echo ""
    echo "Press 's' to submit theme, 'b' to go back."
}

cd ~/
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x ~/nvim.appimage
echo "alias nvim=~/nvim.appimage" >> ~/.zshrc
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
sudo apt install git 
wait
git clone https://github.com/theGreatagen/neovim-config ~/.config/nvim
# rm -rf ~/.config/nvim/.git
wait
echo ""
echo ""
echo "         ${blue}⚡  Welcome to${red} TheGreatagen${normal}${blue} Neovim config setup script! ⚡"
echo ""
echo ""

# Function to handle actions for each theme
handle_theme_actions() {
    case $1 in
        "Catpuccin (mocha)")
            # Add actions specific to Catpuccin (mocha) theme
            echo "Actions for Catpuccin (mocha) theme..."
            # Replace the content in the config file called .config/nvim/lua/configs/theme.lua
            echo "Replacing content in theme.lua..."
            # Define the new content
            new_content='local theme = { "catppuccin/nvim", name = "catppuccin", priority = 1000, config = function()\n\tvim.cmd.colorscheme "catppuccin"\nend\n}\n\nreturn theme'
            # Replace the content in the file
            echo -e "$new_content" > ~/.config/nvim/lua/configs/theme.lua
            ;;
        "rose pine")
            # Add actions specific to rose pine theme
            echo "Actions for rose pine theme..."
            # Replace the content in the config file called .config/nvim/lua/configs/theme.lua
            echo "Replacing content in theme.lua..."
            # Define the new content
            new_content='local theme = { "rose-pine/neovim", name = "rose-pine", config = function ()\n\tvim.cmd("colorscheme rose-pine")\nend}\nreturn theme'
            # Replace the content in the file
            echo -e "$new_content" > ~/.config/nvim/lua/configs/theme.lua
            ;;
        "Tokyo Night (night)")
            # Add actions specific to Tokyo Night (night) theme
            echo "Actions for Tokyo Night (night) theme..."
            # Replace the content in the config file called .config/nvim/lua/configs/theme.lua
            echo "Replacing content in theme.lua..."
            # Define the new content
            new_content='local theme = {\n\t"folke/tokyonight.nvim",\n\tlazy = false,\n\tpriority = 1000,\n\topts = {},\n\tconfig = function()\n\t\tvim.cmd [[colorscheme tokyonight]]\n\tend\n}\n\nreturn theme'
            # Replace the content in the file
            echo -e "$new_content" > ~/.config/nvim/lua/configs/theme.lua
            ;;
    esac
    echo ""
    echo "${bold}${blue}Enjoy your enhanced Neovim experience!${normal}"
    echo "Opening Neovim..."
    ~/nvim.appimage ~/.config/nvim/init.lua
}


# Loop for theme selection
while true; do
    # Prompt for theme selection using select
    echo "${bold}${green}Please select a theme:${normal}"
    PS3="Enter your choice: "
    options=("Catpuccin (mocha)" "rose pine" "Tokyo Night (night)" "Exit")
    select opt in "${options[@]}"
    do
        case $opt in
            "Catpuccin (mocha)")
                display_theme_info "$opt"
                chosen_theme="$opt"
                ;;
            "rose pine")
                display_theme_info "$opt"
                chosen_theme="$opt"
                ;;
            "Tokyo Night (night)")
                display_theme_info "$opt"
                chosen_theme="$opt"
                ;;
            "Exit")
                echo "Exiting..."
                exit
                ;;
            *) echo "Invalid option $REPLY";;
        esac
        # Prompt for user action
        read -n 1 action
        case $action in
            s)
                echo "Submitting theme: $chosen_theme"
                handle_theme_actions "$chosen_theme"
                exit
                ;;
            b)
                echo ""
                echo "Going back to theme selection..."
                echo ""
                chosen_theme=""
                break
                ;;
            *)
                echo "Invalid action."
                ;;
        esac
    done
done
