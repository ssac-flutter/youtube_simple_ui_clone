import 'package:flutter/material.dart';

class UploaderBanner extends StatelessWidget {
  final String uploaderName;
  final String? uploaderLogoSrc;
  final int? maxLines;
  final TextOverflow? overflow;

  const UploaderBanner({
    required this.uploaderName,
    this.uploaderLogoSrc,
    this.maxLines,
    this.overflow,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {},
      child: Row(
        children: [
          /* 1 */
          SizedBox(
            height: 24.0,
            child: uploaderLogoSrc != null
                ? ClipOval(
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Image.asset(
                        'assets/images/logos/$uploaderLogoSrc',
                        fit: BoxFit.contain,
                      ),
                    ),
                  )
                : null,
          ),

          /* 2 */
          if (uploaderLogoSrc != null) const SizedBox(width: 8.0),

          /* 3 */
          Text(
            uploaderName,
            maxLines: maxLines,
            overflow: overflow,
            style: const TextStyle(color: Colors.white, height: 1.0),
          )
        ],
      ),
    );
  }
}
