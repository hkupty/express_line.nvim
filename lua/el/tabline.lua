

-- TODO:
--   T N   For 'tabline': start of tab page N label.  Use %T or %X to end
--         the label.  Clicking this label with left mouse button switches
--         to the specified tab page.
--   X N   For 'tabline': start of close tab N label.  Use %X or %T to end
--         the label, e.g.: %3Xclose%X.  Use %999X for a "close current
--         tab" label.    Clicking this label with left mouse button closes
--         specified tab page.
--   @ N   For 'tabline': start of execute function label. Use %X or %T to
--         end the label, e.g.: %10@SwitchBuffer@foo.c%X.  Clicking this
--         label runs specified function: in the example when clicking once
--         using left mouse button on "foo.c" "SwitchBuffer(10, 1, 'l',
--         '    ')" expression will be run.  Function receives the
--         following arguments in order:
--         1. minwid field value or zero if no N was specified
--         2. number of mouse clicks to detect multiple clicks
--         3. mouse button used: "l", "r" or "m" for left, right or middle
--            button respectively; one should not rely on third argument
--            being only "l", "r" or "m": any other non-empty string value
--            that contains only ASCII lower case letters may be expected
--            for other mouse buttons
--         4. modifiers pressed: string which contains "s" if shift
--            modifier was pressed, "c" for control, "a" for alt and "m"
--            for meta; currently if modifier is not pressed string
--            contains space instead, but one should not rely on presence
--            of spaces or specific order of modifiers: use |stridx()| to
--            test whether some modifier is present; string is guaranteed
--            to contain only ASCII letters and spaces, one letter per
--            modifier; "?" modifier may also be present, but its presence
--            is a bug that denotes that new mouse button recognition was
--            added without modifying code that reacts on mouse clicks on
--            this label.
--         Note: to test whether your version of Neovim contains this
--               feature use `has('tablineat')`.

