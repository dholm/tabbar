TabBarMode
==========

This is a fork of the [Aquamacs](https://aquamacs.org/)
[TabBarMode](http://www.emacswiki.org/emacs/TabBarMode) implementation which is
an up-to date version of this minor mode. TabBarMode is perfectly portable
between different Emacs implementations and this repository is intended to
provide just that.

Since the repository is a filtered clone of the Aquamacs Git repo and hence it
should be perfectly possible to track changes made upstream.


Settings
========

If you are experiencing slowdowns when using tabbar with graphics it might be
caused by issues with transparency. Try setting `(setq 'tabbar-use-images nil)`
to work around this issue. Originally identified by [Tom
Regner](http://stackoverflow.com/users/594138/tom-regner) on
[stackoverflow](http://stackoverflow.com/questions/8520531/tabbar-mode-brings-editing-to-a-crawling-halt).
