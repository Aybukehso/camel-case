main() {
  String kelime = "'Mesajları Görmek İçin Oturum Açın";
  print(turkishToEnglishCamelCase(kelime));
}

String turkishToEnglish(String text) {
  return text
      .replaceAll('ı', 'i')
      .replaceAll('İ', 'I')
      .replaceAll('ş', 's')
      .replaceAll('Ş', 'S')
      .replaceAll('ğ', 'g')
      .replaceAll('Ğ', 'G')
      .replaceAll('ü', 'u')
      .replaceAll('Ü', 'U')
      .replaceAll('ö', 'o')
      .replaceAll('Ö', 'O')
      .replaceAll('ç', 'c')
      .replaceAll('Ç', 'C');
}

String turkishToEnglishCamelCase(String sentence) {
  if (sentence != null) {
    // Cümleyi küçük harflere çevir
    List<String> words = turkishToEnglish(sentence).toLowerCase().split(' ');

    for (int i = 1; i < words.length; i++) {
      if (words[i].length == 1) {
        words[i] = words[i].toLowerCase();
      } else {
        words[i] = words[i][0].toUpperCase() + words[i].substring(1);
      }
    }

    return words.join('');
  } else {
    return '';
  }
}
