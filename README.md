Bashrc
======

Bash-configuration and convenience.

I use this repository by including the following at the bottom of my ~/.bashrc file:

    run_scripts()
    {
      for script in $1/*.sh; do
        [ -x "$script" ] || continue
        . $script
      done
    }
    run_scripts ~/.bashrc.d

The above piece of code has been shamelessly copied from http://www.turnkeylinux.org/blog/generic-shell-hooks .

The next step is pointing ~/.bashrc.d to ~/PATH/TO/THIS/REPO/scripts (tip: `ln` is your friend). After that you control which files are loaded by toggling the executale-flag on/off. If you have your own stuff you'd like to load as well then just place that in ~/bashrc.d and add the following to the bottom of the ~/.bashrc file:

    run_scripts ~/PATH/TO/THIS/REPO/scripts

If there are any questions, feel free to reach out on here or on Twitter.
