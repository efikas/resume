class AppUtils {
  static String getImageName(String imageSlug) {
    if (imageSlug.toLowerCase().contains("glo")) {
      return "glo";
    }

    if (imageSlug.toLowerCase().contains("mtn")) {
      return "mtn";
    }

    if (imageSlug.toLowerCase().contains("9mobile")) {
      return "9mobile";
    }

    if (imageSlug.toLowerCase().contains("smile")) {
      return "smile";
    }

    if (imageSlug.toLowerCase().contains("spectranet")) {
      return "spectranet";
    }

    if (imageSlug.toLowerCase().contains("airtel")) {
      return "airtel";
    }

    return "";
  }

  static String getTVImageName(String imageSlug) {
    if (imageSlug.toLowerCase().contains("dstv")) {
      return "dstv";
    }

    if (imageSlug.toLowerCase().contains("gotv")) {
      return "gotv";
    }

    if (imageSlug.toLowerCase().contains("startimes")) {
      return "startimes";
    }

    if (imageSlug.toLowerCase().contains("showmax")) {
      return "showmax";
    }

    return imageSlug.toLowerCase();
  }

  static String getDiscoImageName(String imageSlug) {
    if (imageSlug.toLowerCase().contains("dstv")) {
      return "dstv";
    }

    if (imageSlug.toLowerCase().contains("gotv")) {
      return "gotv";
    }

    if (imageSlug.toLowerCase().contains("startimes")) {
      return "startimes";
    }

    if (imageSlug.toLowerCase().contains("showmax")) {
      return "showmax";
    }

    return imageSlug.toLowerCase();
  }
}
