# Prot16
# Works with Xfce4 terminal using any one of these https://protesilaos.com/schemes

from ranger.gui.colorscheme import ColorScheme
from ranger.gui.color import *

class prot16(ColorScheme):
    progress_bar_color = 8

    def use(self, context):
        fg, bg, attr = default_colors

        if context.reset:
            return default_colors

        elif context.in_browser:
            if context.selected:
                fg = 14
                bg = 0
            if context.empty or context.error:
                fg = 8
                bg = 9
            if context.border:
                fg = 0
            if context.image:
                fg = 5
            if context.video:
                fg = 13
            if context.audio:
                fg = 6
            if context.document:
                fg = 14
            if context.container:
                fg = 3
            if context.directory:
                fg = 11
            elif context.executable and not \
                    any((context.media, context.container,
                       context.fifo, context.socket)):
                fg = 1
            if context.socket:
                fg = 3
                attr |= bold
            if context.fifo or context.device:
                fg = 10
                if context.device:
                    attr |= bold
            if context.link:
                fg = context.good and 7 or 8
                bg = 8
            if context.bad:
                fg = 1
            if context.tag_marker and not context.selected:
                attr |= bold
                if fg in (7, 8):
                    fg = 8
                else:
                    fg = 1
            if not context.selected and (context.cut or context.copied):
                bg = 15
            if context.main_column:
                if context.selected:
                    attr |= normal
                    fg = 2
                if context.marked:
                    attr |= bold
                    fg = 9
            if context.badinfo:
                if attr & reverse:
                    bg = 1
                else:
                    fg = 7

        elif context.in_titlebar:
            attr |= normal
            if context.hostname:
                fg = 10
                bg = 8
            elif context.directory:
                fg = 8
            elif context.tab:
                if context.good:
                    fg = 8
                    bg = 4
            elif context.link:
                fg = 4

        elif context.in_statusbar:
            if context.permissions:
                if context.good:
                    fg = 2
                    bg = 0
                elif context.bad:
                    fg = 1
                    bg = 0
            if context.marked:
                attr |= bold | reverse
                fg = 8
            if context.message:
                if context.bad:
                    attr |= bold
                    fg = 10
            if context.loaded:
                bg = self.progress_bar_color
            if context.vcsinfo:
                fg = 10
                attr &= ~bold
            if context.vcscommit:
                fg = 5
                attr &= ~bold


        if context.text:
            if context.highlight:
                attr |= reverse

        if context.in_taskview:
            if context.title:
                fg = 8

            if context.selected:
                attr |= reverse

            if context.loaded:
                if context.selected:
                    fg = self.progress_bar_color
                else:
                    bg = self.progress_bar_color


        if context.vcsfile and not context.selected:
            attr &= ~bold
            if context.vcsconflict:
                fg = 1
            elif context.vcschanged:
                fg = 2
            elif context.vcsunknown:
                fg = 3
            elif context.vcsstaged:
                fg = 4
            elif context.vcssync:
                fg = 5
            elif context.vcsignored:
                fg = 6

        elif context.vcsremote and not context.selected:
            attr &= ~bold
            if context.vcssync:
                fg = 12
            elif context.vcsbehind:
                fg = 13
            elif context.vcsahead:
                fg = 9
            elif context.vcsdiverged:
                fg = 10
            elif context.vcsunknown:
                fg = 11

        return fg, bg, attr
