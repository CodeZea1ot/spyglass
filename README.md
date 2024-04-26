# Spyglass

A tool for navigating the treacherous seas of terminal output.

![Spyglass Logo](./assets/images/spyglass_text.png)

## Demo

![Main Demo Gif](./assets/vhs/gifs/main_demo.gif)

## Installation

> [!NOTE]  
> Releases will be avaliable in the near future.

The easiest way to install is to create a symbolic link that is available within your in your `$PATH`. I recommend `/usr/local/bin`.

This allows you to simply `git pull` this repo whenever you want the latest version from the `main` branch.

```bash
git clone git@github.com:CodeZea1ot/spyglass.git
cd spyglass
sudo ln -s $(pwd)/spyglass.sh /usr/local/bin/spyglass
```

Alternatively, if you don't want to use `git pull` to update, you can just copy the binary script into your `$PATH`. Again, `/usr/local/bin` is probably the best choice.

```bash
git clone git@github.com:CodeZea1ot/spyglass.git
cd spyglass
sudo cp $(pwd)/spyglass.sh /usr/local/bin/spyglass
```

## Uninstall
To uninstall, simply `rm` the symbolic link or copied binary you created during installation. If you put it in `/usr/local/bin` you could just do the following.

```bash
sudo rm /usr/local/bin/spyglass
```

## Options
- [`-d`](#line-delay): Set the delay in seconds between each line output (default is 0.1)
- [`-D`](#group-delay): Set the delay in seconds between each group of -n lines output (default is 0)
- [`-k`](#keep-last-group): Keep the last group of output drawn to the terminal (default is to clear)
- [`-K`](#keep-all-groups): Keep all output drawn to the terminal (default is to clear)
- [`-n`](#group-size): Specify the maximum number of lines to display as a group (default is 8)
- [`-s`](#line-spacing): Set the amount of line breaks that should appear after each line (default is 0)

## Configuration

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