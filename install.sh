#!/bin/sh

script_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
base_theme=""
accent=""

echo "$SCRIPT_DIR"

while true; do
    echo -e "Choose the base theme"
    echo "====================="
    echo "1) Panther"
    echo -e "2) Tiger\n"
    echo -n "> "
    read option
    
    case $option in
        "1")
            base_theme="Panther"
            break;
        ;;
        "2")
            base_theme="Tiger"
            break;
        ;;
        *)
            echo "Invalid option..."
    esac
done

while true; do
    echo -e "Choose the accent color"
    echo "======================="
    echo "1) Banana"
    echo "2) Blueberry"
    echo "3) Cherry"
    echo "4) Grape"
    echo "5) Kiwi"
    echo -e "6) Tangerine\n"
    echo -n "> "
    read option
    
    case $option in
        "1")
            accent="Banana"
            break;
        ;;
        "2")
            accent="Blueberry"
            break;
        ;;
        "3")
            accent="Cherry"
            break;
        ;;
        "4")
            accent="Grape"
            break;
        ;;
        "5")
            accent="Kiwi"
            break;
        ;;
        "6")
            accent="Tangerine"
            break;
        ;;
        *)
            echo "Invalid option..."
    esac
done

color_schemes_dir="$HOME/.local/share/color-schemes"
themes_dir="$HOME/.local/share/aurorae/themes"
color_scheme_path="$script_dir/src/ColorSchemes/Whiskers$base_theme$accent.colors"
window_decoration_dir="$script_dir/src/WindowDecorations/Whiskers-$base_theme"

mkdir -p "$color_schemes_dir"
mkdir -p "$themes_dir"

cp -r "$color_scheme_path" "$color_schemes_dir"
cp -r "$window_decoration_dir" "$themes_dir"

echo "Theme installed :P"
echo "You can now go to colors and window decoration settings and apply the theme."
