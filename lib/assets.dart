enum Icons { instagramText }

extension IconsPath on Icons {
  String get path {
    switch (this) {
      case Icons.instagramText:
        return 'assets/icons/icon_instagram_text.png';
    }
  }
}
