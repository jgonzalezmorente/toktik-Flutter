

import 'package:toktik/domain/datasources/video_posts_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_posts_repository.dart';


class VideoPostRepositoryImp implements VideoPostRepository {

  final VideoPostDatasource videoDatasource;

  VideoPostRepositoryImp({
    required this.videoDatasource
  });

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId) {    
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {    
    return videoDatasource.getTrendingVideosByPage(page);
  }

}