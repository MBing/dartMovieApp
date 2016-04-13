// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import '../lib/DataService.dart';

void main() async {

  DataService service = new TMDBService();

  List movieList = await service.getNowPlayingMovies();
  querySelector('#output').text = movieList.length.toString();

}

