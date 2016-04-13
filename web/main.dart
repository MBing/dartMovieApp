// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import '../lib/DataService.dart';
import 'package:di/di.dart' as di;
import 'package:mdl/mdl.dart';

void main() async {

  DataService service = new TMDBService();

  List movieList = await service.getNowPlayingMovies();
  var moviesLen = movieList.length;
  var divke = new DivElement();
  movieList.forEach((movie) {
    print(movie.poster_path);
    print(movie.id);
    var divElem = new DivElement();
    divElem.className = "mdl-card";
    var imgElem = new ImageElement();
    imgElem.src = "http://image.tmdb.org/t/p/w185" + movie.poster_path;
    divElem.append(imgElem);
    querySelector("#output").append(divElem);
  });
}

