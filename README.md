# Spyglass

A tool for navigating the treacherous seas of terminal output.

![Spyglass Logo](./assets/images/spyglass_text.png)

## Demo

![Main Demo Gif](./assets/vhs/gifs/main_demo.gif)

## Installation

### Downloading a Release

Simply head over to [Releases](https://github.com/CodeZea1ot/spyglass/releases), download the `spyglass.sh` asset for your desired version, and then put it in your `$PATH`. I recommend `/usr/local/bin`.

```bash
sudo cp /path/to/spyglass.sh /usr/local/bin/spyglass
```

### Cloning the Repo

You can also install `spyglass` by cloning this repo and then creating a symbolic link that is available within your `$PATH`.

This installation method allows you to simply `git pull` this repo whenever you want the latest version from the `main` branch.

It also allows you to swap the version of `spyglass` you are using by changing git branches, which is useful for exploring features currently in development but not yet in a release.

```bash
git clone git@github.com:CodeZea1ot/spyglass.git
cd spyglass
sudo ln -s $(pwd)/spyglass.sh /usr/local/bin/spyglass
```

## Uninstall
To uninstall, simply `rm` the symbolic link or copied binary you created during installation. If you put it in `/usr/local/bin` you could just do the following.

```bash
sudo rm /usr/local/bin/spyglass
```

## Options
- [`-c`](#smart-color-formatting): Enable smart color formatting (default is disabled)
- [`-d`](#line-delay): Set the delay in seconds between each line output (default is 0.1)
- [`-D`](#group-delay): Set the delay in seconds between each group of -n lines output (default is 0)
- [`-k`](#keep-last-group): Keep the last group of output drawn to the terminal (default is to clear)
- [`-K`](#keep-all-groups): Keep all output drawn to the terminal (default is to clear)
- [`-n`](#group-size): Specify the maximum number of lines to display as a group (default is 8)
- [`-s`](#line-spacing): Set the amount of line breaks that should appear after each line (default is 0)

## Configuration

### Smart Color Formatting

The `-c` flag enables smart color formatting for each line being drawn to the terminal. If a keyword is detected anywhere in the line, the corresponding color will be applied.

If multiple keywords exist in the line being formatted, the match with the highest priority value will be applied.

If no keywords are found, a color will not be applied to the line.

| Keyword        | Color    | Description               | Priority    |
|----------------|----------|---------------------------|-------------|
| error          | Red      | Error message             |      3      |
| warn           | Yellow   | Warning message           |      2      |
| success        | Green    | Success message           |      1      |
| successfully   | Green    | Success message           |      1      |
| finished       | Green    | Completion message        |      1      |
| complete       | Green    | Completion message        |      1      |
| completed      | Green    | Completion message        |      1      |
| done           | Green    | Completion message        |      1      |
| info           | Blue     | Informational message     |      0      |
| downloading    | Blue     | Download status message   |      0      |



<details>
<summary>Show Example</summary>
<br>

![Smart Color Formatting Example](./assets/vhs/gifs/smart_color_formatting.gif)
</details>

### Line Delay

The `-d` flag lets you set the amount of time that passes between each line being drawn to the terminal. It expects to be followed by a numerical value like `1`, `0.2`, etc.

<details>
<summary>Show Example</summary>
<br>

![Line Delay Example](./assets/vhs/gifs/line_delay.gif)
</details>


### Group Delay

The `-D` flag lets you set the amount of time that passes before the most recent line group is cleared from the terminal. It expects to be followed by a numerical value like `1`, `0.2`, etc.

<details>
<summary>Show Example</summary>
<br>

![Group Delay Example](./assets/vhs/gifs/group_delay.gif)
</details>

### Keep Last Group

The `-k` flag tells spyglass to persist the last group of output drawn to the terminal.

<details>
<summary>Show Example</summary>
<br>

![Keep Last Group Example](./assets/vhs/gifs/keep_last_group.gif)
</details>

### Keep All Groups

The `-K` flag tells spyglass to persist all output drawn to the terminal.

<details>
<summary>Show Example</summary>
<br>

![Keep All Groups Example](./assets/vhs/gifs/keep_all_groups.gif)
</details>

### Group Size

The `-n` flag lets you set the maximum number of lines to display as a group in the terminal. It expects to be followed by a whole number like `5`, `10`, `20`, etc.

<details>
<summary>Show Example</summary>
<br>

![Group Size Example](./assets/vhs/gifs/group_size.gif)
</details>

### Line Spacing

The `-s` flag lets you set the amount of line breaks you'd like to appear after each line is drawn in the terminal. It expects to be followed by a whole number like `5`, `10`, `20`, etc.

<details>
<summary>Show Example</summary>
<br>

![Line Spacing Example](./assets/vhs/gifs/line_spacing.gif)
</details>