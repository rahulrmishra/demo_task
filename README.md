# Improvements

- Change folder structure
- Add strings file
- Directly generate list by using ListView.builder.
- Add AutomaticKeepAliveClientMixin to ListItemWidget to preserve it's state even though we scroll through the list. By default the ListView.builder would destroy and build items lazily as they appear on screen for better performance.
