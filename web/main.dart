// Copyright (c) 2016, Martin Bing. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import '../lib/DataService.dart';
import 'package:di/di.dart' as di;
import 'package:mdl/mdl.dart';

void main() async {
  registerMdl();
  DataService service = new TMDBService();

  List movieList = await service.getNowPlayingMovies();
  componentFactory().run().then((_) {
    movieList.forEach((movie) {
      print(movie.poster_path);
      print(movie.id);
      var divElem = new DivElement();
      divElem.classes.add("mdl-card");
      divElem.classes.add("mdl-shadow--2dp");
      var imgElem = new ImageElement();
      imgElem.src = "http://image.tmdb.org/t/p/w185" + movie.poster_path;
      divElem.append(imgElem);
      querySelector("#output").append(divElem);
    });
  });
}

