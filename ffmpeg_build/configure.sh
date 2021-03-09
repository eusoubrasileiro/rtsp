pkg install freetype libass cmake libgnutls gnutls libopus libdav1d libmp3lame libvorbis libvpx pkg-config wget nasm libx264 libx265 libxcb ninja libtool

cd ffmpeg
./configure \
--prefix="$HOME/ffmpeg_build" \
--pkg-config-flags="--static" \
--extra-cflags="-I$HOME/ffmpeg_sources/ffmpeg/include" \
--extra-ldflags="-L$HOME/ffmpeg_sources/ffmpeg/lib" \
--extra-libs="-lpthread -lm" \
--bindir="$HOME/bin" \
--enable-gpl \
--enable-gnutls  \
--enable-libass  \
--enable-libfreetype \
--enable-libmp3lame   \
--enable-libvorbis \
--enable-libvpx \
--enable-libx264 \
--enable-libx265  \
--enable-nonfree \
--enable-cross-compile \
--disable-indevs \
--disable-outdevs \
--disable-symver \
--enable-neon \
--enable-shared \
--disable-static \
--target-os=android