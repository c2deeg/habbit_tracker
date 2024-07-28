



import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';

import '../theme/app_color_palette.dart';
import 'asset.dart';

class AssetWidget extends StatelessWidget {
  final Asset asset;
  final double? width;
  final File? file;
  final double? height;
  final Color? color;
  final BoxFit? boxFit;
  final String? firstName;
  final String? lastName;
  final String? placeHolder;
  final bool? isCircular;

  const AssetWidget(
      {Key? key,
        required this.asset,
        this.width,
        this.file,
        this.firstName,
        this.placeHolder ,
            // ImageResource.appLogo, //"assets/images/png/user_img.png",
        this.isCircular = false,
        this.lastName,
        this.height,
        this.color,
        this.boxFit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (asset.type) {
      case AssetType.png:
        return Image(
            image: AssetImage(asset.path),
            width: width,
            height: height,
            fit: boxFit,
            color: color);
      case AssetType.svg:
        return asset.path != ""
            ? SvgPicture.asset(
          asset.path,
          width: width,
          height: height,
          color: color,
          fit: boxFit ?? BoxFit.contain,
        )
            : const SizedBox();
      case AssetType.file:
        return asset.file != null
            ? Image.file(
          asset.file!,
          width: width,
          height: height,
          color: color,
          fit: boxFit ?? BoxFit.contain,
        )
            : const SizedBox();
      case AssetType.network:
        try {
          var widget = InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            /* onTap: () {
              */ /*print("asset.path> ${asset.path}");
              if(asset.path!=null&&asset.path!=""&&asset.path!='null') {
                Get.toNamed(Routes.FullScreenImage,
                    arguments: {"image": asset.path});
              }else{
                if(onClick!=null){
                  onClick!();
                }
              }*/ /*
            },*/
            child: asset.path == "" && asset.path == null
                ? loadingWidget(placeHolder: placeHolder)
                : CachedNetworkImage(
              height: height,
              width: width,
              imageUrl: asset.path,
              fit: boxFit ?? BoxFit.cover,
              placeholder: (context, url) =>
                  loadingWidget(placeHolder: url),
              errorWidget: (context, url, error) =>
                  loadingWidget(placeHolder: placeHolder),
            ),
          );

          return widget;
        } catch (e) {
          print("Network Image Error : ${e.toString()}");
          return loadingWidget(placeHolder: placeHolder);
        }
    }
  }


  Widget loadingWidget({String? placeHolder}) {
    return placeHolder == null || placeHolder == ""
        ? const SizedBox()
        : Shimmer.fromColors(
        baseColor: lightColorPalette.primarySwatch.shade900,
        highlightColor: Colors.transparent,
        child: Container(
          color: lightColorPalette.secondarySwatch.shade300,
          // constraints: BoxConstraints(maxHeight: 234.h,),
        ));
  }

}
