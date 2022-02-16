# Brightniss
The last brightness controller you'll ever need.

Brightniss provides stable brightness control for monitors that lack/have broken brightness controls. It also solves the problem of annoying screen flickering in later versions of Gnome and other desktop environments while running traditional tools like [Brightness Controller](https://github.com/lordamit/Brightness).

### TODO
- README
- Package script as an installable gem

## Usage
- Clone the repository `git clone <https/ssh url for this repo>`
- `cd` into folder
- Change permissions for the script to be executable
```
chmod +x brightniss
```
- Run the `brightniss` script with your desired brightness level (1-100)
```
./brightniss <brightness-level>
```

Alternatively, you can add an alias for the script so you can run it from anywhere in your terminal by adding
`alias brightniss="<path-to-your-brightniss-repo>/brightniss"` to your bashrc or bash_aliases

### Flags and advanced usage

Finding help: `--help` or `-h` lists all avalable options and example usage
Running only once: `--once` or `-o` runs the script only once so the script doesn't run continuously in the background
Reset brightness: `--reset` or `-r`
