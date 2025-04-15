.class public Lorg/apache/cordova/camera/CameraLauncher;
.super Lorg/apache/cordova/CordovaPlugin;
.source "CameraLauncher.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# static fields
.field private static final ALLMEDIA:I = 0x2

.field private static final CAMERA:I = 0x1

.field private static final CROPPED_URI_KEY:Ljava/lang/String; = "croppedUri"

.field private static final CROP_CAMERA:I = 0x64

.field private static final DATA_URL:I = 0x0

.field private static final FILE_URI:I = 0x1

.field private static final GET_All:Ljava/lang/String; = "Get All"

.field private static final GET_PICTURE:Ljava/lang/String; = "Get Picture"

.field private static final GET_VIDEO:Ljava/lang/String; = "Get Video"

.field private static final HEIC_MIME_TYPE:Ljava/lang/String; = "image/heic"

.field private static final IMAGE_FILE_PATH_KEY:Ljava/lang/String; = "imageFilePath"

.field private static final IMAGE_URI_KEY:Ljava/lang/String; = "imageUri"

.field private static final JPEG:I = 0x0

.field private static final JPEG_EXTENSION:Ljava/lang/String; = ".jpg"

.field private static final JPEG_MIME_TYPE:Ljava/lang/String; = "image/jpeg"

.field private static final JPEG_TYPE:Ljava/lang/String; = "jpg"

.field private static final LOG_TAG:Ljava/lang/String; = "CameraLauncher"

.field public static final PERMISSION_DENIED_ERROR:I = 0x14

.field private static final PHOTOLIBRARY:I = 0x0

.field private static final PICTURE:I = 0x0

.field private static final PNG:I = 0x1

.field private static final PNG_EXTENSION:Ljava/lang/String; = ".png"

.field private static final PNG_MIME_TYPE:Ljava/lang/String; = "image/png"

.field private static final PNG_TYPE:Ljava/lang/String; = "png"

.field private static final SAVEDPHOTOALBUM:I = 0x2

.field public static final SAVE_TO_ALBUM_SEC:I = 0x1

.field private static final TAKE_PICTURE_ACTION:Ljava/lang/String; = "takePicture"

.field public static final TAKE_PIC_SEC:I = 0x0

.field private static final TIME_FORMAT:Ljava/lang/String; = "yyyyMMdd_HHmmss"

.field private static final VIDEO:I = 0x1


# instance fields
.field private allowEdit:Z

.field private applicationId:Ljava/lang/String;

.field public callbackContext:Lorg/apache/cordova/CallbackContext;

.field private conn:Landroid/media/MediaScannerConnection;

.field private correctOrientation:Z

.field private croppedFilePath:Ljava/lang/String;

.field private croppedUri:Landroid/net/Uri;

.field private destType:I

.field private encodingType:I

.field private exifData:Lorg/apache/cordova/camera/ExifHelper;

.field private imageFilePath:Ljava/lang/String;

.field private imageUri:Landroid/net/Uri;

.field private mQuality:I

.field private mediaType:I

.field private numPics:I

.field private orientationCorrected:Z

.field private saveToPhotoAlbum:Z

.field private scanMe:Landroid/net/Uri;

.field private srcType:I

.field private targetHeight:I

.field private targetWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/cordova/camera/CameraLauncher;ILandroid/content/Intent;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/camera/CameraLauncher;->processResultFromGallery(ILandroid/content/Intent;)V

    return-void
.end method

.method private calculateModifiedBitmapOutputFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_0

    .line 716
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "modified"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/cordova/camera/CameraLauncher;->getExtensionForEncodingType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0x2f

    .line 718
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 719
    invoke-direct {p0}, Lorg/apache/cordova/camera/CameraLauncher;->getMimetypeForEncodingType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p2

    .line 724
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0}, Lorg/apache/cordova/camera/CameraLauncher;->getExtensionForEncodingType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static calculateSampleSize(IIII)I
    .locals 3

    int-to-float v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    int-to-float v1, p2

    int-to-float v2, p3

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1215
    div-int/2addr p0, p2

    return p0

    .line 1217
    :cond_0
    div-int/2addr p1, p3

    return p1
.end method

.method private checkForDuplicateImage(I)V
    .locals 5

    .line 1266
    invoke-direct {p0}, Lorg/apache/cordova/camera/CameraLauncher;->whichContentStore()Landroid/net/Uri;

    move-result-object v0

    .line 1267
    invoke-direct {p0, v0}, Lorg/apache/cordova/camera/CameraLauncher;->queryImgDB(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v1

    .line 1268
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    .line 1270
    iget-boolean p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->saveToPhotoAlbum:Z

    if-eqz p1, :cond_0

    move v4, v3

    .line 1275
    :cond_0
    iget p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->numPics:I

    sub-int/2addr v2, p1

    if-ne v2, v4, :cond_2

    .line 1276
    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    const-string p1, "_id"

    .line 1278
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v4, v3, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 1282
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1283
    iget-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1284
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void
.end method

.method private cleanup(ILandroid/net/Uri;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 0

    if-eqz p4, :cond_0

    .line 1242
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1246
    :cond_0
    new-instance p4, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/cordova/camera/FileHelper;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/io/File;->delete()Z

    .line 1248
    invoke-direct {p0, p1}, Lorg/apache/cordova/camera/CameraLauncher;->checkForDuplicateImage(I)V

    .line 1250
    iget-boolean p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->saveToPhotoAlbum:Z

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 1251
    invoke-direct {p0, p3}, Lorg/apache/cordova/camera/CameraLauncher;->scanForGallery(Landroid/net/Uri;)V

    .line 1254
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method private createCaptureFile(I)Ljava/io/File;
    .locals 1

    const-string v0, ""

    .line 368
    invoke-direct {p0, p1, v0}, Lorg/apache/cordova/camera/CameraLauncher;->createCaptureFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private createCaptureFile(ILjava/lang/String;)Ljava/io/File;
    .locals 2

    .line 379
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, ".Pic"

    :cond_0
    if-nez p1, :cond_1

    .line 384
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ".jpg"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 386
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ".png"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 391
    :goto_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p0}, Lorg/apache/cordova/camera/CameraLauncher;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 388
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid Encoding Type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private exifToDegrees(I)I
    .locals 1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const/16 p1, 0x5a

    return p1

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const/16 p1, 0xb4

    return p1

    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    const/16 p1, 0x10e

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private getCompressFormatForEncodingType(I)Landroid/graphics/Bitmap$CompressFormat;
    .locals 0

    if-nez p1, :cond_0

    .line 656
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object p1
.end method

.method private getExtensionForEncodingType()Ljava/lang/String;
    .locals 1

    .line 728
    iget v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    if-nez v0, :cond_0

    const-string v0, ".jpg"

    goto :goto_0

    :cond_0
    const-string v0, ".png"

    :goto_0
    return-object v0
.end method

.method private getMimetypeForEncodingType()Ljava/lang/String;
    .locals 2

    .line 680
    iget v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "image/png"

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "image/jpeg"

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private getPermissions(ZI)[Ljava/lang/String;
    .locals 4

    .line 227
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "android.permission.CAMERA"

    if-lt v0, v1, :cond_5

    const/4 v0, 0x1

    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    const-string v3, "android.permission.READ_MEDIA_IMAGES"

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_0

    .line 235
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 233
    :cond_0
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 231
    :cond_1
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz p2, :cond_4

    if-eq p2, v0, :cond_3

    .line 245
    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 243
    :cond_3
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 241
    :cond_4
    filled-new-array {v2, v2, v3}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    if-eqz p1, :cond_6

    .line 250
    filled-new-array {v0, p2}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 252
    :cond_6
    filled-new-array {v2, v0, p2}, [Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getPicturesPath()Lorg/apache/cordova/camera/GalleryPathVO;
    .locals 3

    .line 660
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 661
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IMG_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/apache/cordova/camera/CameraLauncher;->getExtensionForEncodingType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 662
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 664
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 665
    new-instance v2, Lorg/apache/cordova/camera/GalleryPathVO;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/cordova/camera/GalleryPathVO;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private getScaledAndRotatedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "Unable to read Exif data: "

    const-string v3, "IMG_"

    .line 992
    iget v4, v1, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    const-string v5, "Exception while closing file input stream."

    const-string v6, "CameraLauncher"

    const/4 v7, 0x0

    if-gtz v4, :cond_2

    iget v4, v1, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    if-gtz v4, :cond_2

    iget-boolean v4, v1, Lorg/apache/cordova/camera/CameraLauncher;->correctOrientation:Z

    if-nez v4, :cond_2

    .line 996
    :try_start_0
    iget-object v2, v1, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {v0, v2}, Lorg/apache/cordova/camera/FileHelper;->getInputStreamFromUriString(Ljava/lang/String;Lorg/apache/cordova/CordovaInterface;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 997
    :try_start_1
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    .line 1006
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 1008
    :catch_0
    invoke-static {v6, v5}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v2, v7

    .line 1001
    :goto_1
    :try_start_3
    iget-object v3, v1, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    goto :goto_0

    :catch_4
    move-exception v0

    move-object v2, v7

    .line 999
    :goto_2
    iget-object v3, v1, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    :goto_3
    return-object v7

    :catchall_1
    move-exception v0

    move-object v7, v2

    :goto_4
    if-eqz v7, :cond_1

    .line 1006
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_5

    .line 1008
    :catch_5
    invoke-static {v6, v5}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    :cond_1
    :goto_5
    throw v0

    .line 1027
    :cond_2
    :try_start_5
    iget-object v4, v1, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {v0, v4}, Lorg/apache/cordova/camera/FileHelper;->getInputStreamFromUriString(Ljava/lang/String;Lorg/apache/cordova/CordovaInterface;)Ljava/io/InputStream;

    move-result-object v4

    const/4 v8, 0x0

    if-eqz v4, :cond_4

    .line 1030
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyyMMdd_HHmmss"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 1031
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lorg/apache/cordova/camera/CameraLauncher;->getExtensionForEncodingType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1032
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lorg/apache/cordova/camera/CameraLauncher;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1033
    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 1034
    invoke-direct {v1, v4, v3}, Lorg/apache/cordova/camera/CameraLauncher;->writeUncompressedImage(Ljava/io/InputStream;Landroid/net/Uri;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_c

    .line 1036
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {v0, v4}, Lorg/apache/cordova/camera/FileHelper;->getMimeType(Ljava/lang/String;Lorg/apache/cordova/CordovaInterface;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "image/jpeg"

    .line 1037
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1039
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "file://"

    const-string v10, ""

    invoke-virtual {v0, v4, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1041
    new-instance v4, Lorg/apache/cordova/camera/ExifHelper;

    invoke-direct {v4}, Lorg/apache/cordova/camera/ExifHelper;-><init>()V

    iput-object v4, v1, Lorg/apache/cordova/camera/CameraLauncher;->exifData:Lorg/apache/cordova/camera/ExifHelper;

    .line 1042
    invoke-virtual {v4, v0}, Lorg/apache/cordova/camera/ExifHelper;->createInFile(Ljava/lang/String;)V

    .line 1043
    iget-object v4, v1, Lorg/apache/cordova/camera/CameraLauncher;->exifData:Lorg/apache/cordova/camera/ExifHelper;

    invoke-virtual {v4}, Lorg/apache/cordova/camera/ExifHelper;->readExifData()V

    .line 1045
    iget-boolean v4, v1, Lorg/apache/cordova/camera/CameraLauncher;->correctOrientation:Z

    if-eqz v4, :cond_3

    .line 1046
    new-instance v4, Landroid/media/ExifInterface;

    invoke-direct {v4, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v0, "Orientation"

    .line 1047
    invoke-virtual {v4, v0, v8}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {v1, v0}, Lorg/apache/cordova/camera/CameraLauncher;->exifToDegrees(I)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_7

    :cond_3
    :goto_6
    move v0, v8

    goto :goto_7

    :catch_6
    move-exception v0

    .line 1051
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lorg/apache/cordova/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c

    goto :goto_6

    :cond_4
    move-object v3, v7

    move-object v9, v3

    goto :goto_6

    .line 1062
    :goto_7
    :try_start_8
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    .line 1063
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 1066
    :try_start_9
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {v10, v11}, Lorg/apache/cordova/camera/FileHelper;->getInputStreamFromUriString(Ljava/lang/String;Lorg/apache/cordova/CordovaInterface;)Ljava/io/InputStream;

    move-result-object v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 1067
    :try_start_a
    invoke-static {v10, v7, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v10, :cond_5

    .line 1071
    :try_start_b
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_8

    .line 1073
    :catch_7
    :try_start_c
    invoke-static {v6, v5}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    :cond_5
    :goto_8
    iget v11, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v11, :cond_13

    iget v11, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-nez v11, :cond_6

    goto/16 :goto_10

    .line 1085
    :cond_6
    iget v11, v1, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    if-gtz v11, :cond_7

    iget v11, v1, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    if-gtz v11, :cond_7

    .line 1086
    iget v11, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v11, v1, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    .line 1087
    iget v11, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v11, v1, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    :cond_7
    const/16 v11, 0x5a

    if-eq v0, v11, :cond_9

    const/16 v11, 0x10e

    if-ne v0, v11, :cond_8

    goto :goto_9

    .line 1098
    :cond_8
    iget v11, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1099
    iget v12, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move v13, v8

    goto :goto_a

    .line 1094
    :cond_9
    :goto_9
    iget v11, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1095
    iget v12, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move v13, v4

    .line 1103
    :goto_a
    invoke-virtual {v1, v11, v12}, Lorg/apache/cordova/camera/CameraLauncher;->calculateAspectRatio(II)[I

    move-result-object v14

    .line 1106
    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1107
    aget v15, v14, v8

    aget v8, v14, v4

    invoke-static {v11, v12, v15, v8}, Lorg/apache/cordova/camera/CameraLauncher;->calculateSampleSize(IIII)I

    move-result v8

    iput v8, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 1110
    :try_start_d
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v8, v1, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {v3, v8}, Lorg/apache/cordova/camera/FileHelper;->getInputStreamFromUriString(Ljava/lang/String;Lorg/apache/cordova/CordovaInterface;)Ljava/io/InputStream;

    move-result-object v10

    .line 1111
    invoke-static {v10, v7, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz v10, :cond_a

    .line 1115
    :try_start_e
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_b

    .line 1117
    :catch_8
    :try_start_f
    invoke-static {v6, v5}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :cond_a
    :goto_b
    if-nez v2, :cond_c

    if-eqz v9, :cond_b

    .line 1147
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_b
    return-object v7

    :cond_c
    if-nez v13, :cond_d

    const/4 v3, 0x0

    .line 1125
    :try_start_10
    aget v5, v14, v3

    goto :goto_c

    :cond_d
    aget v5, v14, v4

    :goto_c
    if-nez v13, :cond_e

    .line 1126
    aget v3, v14, v4

    goto :goto_d

    :cond_e
    const/4 v3, 0x0

    aget v6, v14, v3

    move v3, v6

    .line 1128
    :goto_d
    invoke-static {v2, v5, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eq v3, v2, :cond_f

    .line 1130
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1133
    :cond_f
    iget-boolean v2, v1, Lorg/apache/cordova/camera/CameraLauncher;->correctOrientation:Z

    if-eqz v2, :cond_10

    if-eqz v0, :cond_10

    .line 1134
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, v0

    .line 1135
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->setRotate(F)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 1137
    :try_start_11
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    const/16 v22, 0x1

    move-object/from16 v16, v3

    move-object/from16 v21, v2

    invoke-static/range {v16 .. v22}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1138
    iput-boolean v4, v1, Lorg/apache/cordova/camera/CameraLauncher;->orientationCorrected:Z
    :try_end_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    goto :goto_e

    :catch_9
    const/4 v2, 0x0

    .line 1140
    :try_start_12
    iput-boolean v2, v1, Lorg/apache/cordova/camera/CameraLauncher;->orientationCorrected:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :cond_10
    :goto_e
    if-eqz v9, :cond_11

    .line 1147
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_11
    return-object v3

    :catchall_2
    move-exception v0

    if-eqz v10, :cond_12

    .line 1115
    :try_start_13
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    goto :goto_f

    .line 1117
    :catch_a
    :try_start_14
    invoke-static {v6, v5}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    :cond_12
    :goto_f
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    :cond_13
    :goto_10
    if-eqz v9, :cond_14

    .line 1147
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_14
    return-object v7

    :catchall_3
    move-exception v0

    move-object v7, v10

    goto :goto_11

    :catchall_4
    move-exception v0

    :goto_11
    if-eqz v7, :cond_15

    .line 1071
    :try_start_15
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_b
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    goto :goto_12

    .line 1073
    :catch_b
    :try_start_16
    invoke-static {v6, v5}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    :cond_15
    :goto_12
    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    :catchall_5
    move-exception v0

    if-eqz v9, :cond_16

    .line 1147
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1149
    :cond_16
    throw v0

    :catch_c
    move-exception v0

    .line 1056
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception while getting input stream: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method private getTempDirectoryPath()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 261
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasPermissions([Ljava/lang/String;)Z
    .locals 4

    .line 1439
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 1440
    invoke-static {p0, v3}, Lorg/apache/cordova/PermissionHelper;->hasPermission(Lorg/apache/cordova/CordovaPlugin;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isImageMimeTypeProcessable(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "image/jpeg"

    .line 830
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "image/png"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "image/heic"

    .line 831
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private outputModifiedBitmap(Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 688
    iget-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {p2, v0}, Lorg/apache/cordova/camera/FileHelper;->getRealPath(Landroid/net/Uri;Lorg/apache/cordova/CordovaInterface;)Ljava/lang/String;

    move-result-object p2

    .line 689
    invoke-direct {p0, p3, p2}, Lorg/apache/cordova/camera/CameraLauncher;->calculateModifiedBitmapOutputFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 691
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/apache/cordova/camera/CameraLauncher;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 693
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 694
    iget v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    invoke-direct {p0, v0}, Lorg/apache/cordova/camera/CameraLauncher;->getCompressFormatForEncodingType(I)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    .line 696
    iget v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->mQuality:I

    invoke-virtual {p1, v0, v1, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 697
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    .line 699
    iget-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->exifData:Lorg/apache/cordova/camera/ExifHelper;

    if-eqz p1, :cond_1

    iget p3, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    if-nez p3, :cond_1

    .line 701
    :try_start_0
    iget-boolean p3, p0, Lorg/apache/cordova/camera/CameraLauncher;->correctOrientation:Z

    if-eqz p3, :cond_0

    iget-boolean p3, p0, Lorg/apache/cordova/camera/CameraLauncher;->orientationCorrected:Z

    if-eqz p3, :cond_0

    .line 702
    invoke-virtual {p1}, Lorg/apache/cordova/camera/ExifHelper;->resetOrientation()V

    .line 704
    :cond_0
    iget-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->exifData:Lorg/apache/cordova/camera/ExifHelper;

    invoke-virtual {p1, p2}, Lorg/apache/cordova/camera/ExifHelper;->createOutFile(Ljava/lang/String;)V

    .line 705
    iget-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->exifData:Lorg/apache/cordova/camera/ExifHelper;

    invoke-virtual {p1}, Lorg/apache/cordova/camera/ExifHelper;->writeExifData()V

    const/4 p1, 0x0

    .line 706
    iput-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->exifData:Lorg/apache/cordova/camera/ExifHelper;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 708
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object p2
.end method

.method private performCrop(Landroid/net/Uri;ILandroid/content/Intent;)V
    .locals 5

    .line 457
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 459
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "crop"

    const-string v1, "true"

    .line 461
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    iget p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    if-lez p1, :cond_0

    const-string v1, "outputX"

    .line 465
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 467
    :cond_0
    iget p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    if-lez p1, :cond_1

    const-string v1, "outputY"

    .line 468
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 470
    :cond_1
    iget p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    const/4 v1, 0x1

    if-lez p1, :cond_2

    iget v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    if-lez v2, :cond_2

    if-ne v2, p1, :cond_2

    const-string p1, "aspectX"

    .line 471
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "aspectY"

    .line 472
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 475
    :cond_2
    iget p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/apache/cordova/camera/CameraLauncher;->createCaptureFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedFilePath:Ljava/lang/String;

    .line 476
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedUri:Landroid/net/Uri;

    .line 477
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 p1, 0x2

    .line 478
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "output"

    .line 479
    iget-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 483
    iget-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    if-eqz p1, :cond_3

    .line 484
    iget-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    add-int/lit8 v1, p2, 0x64

    invoke-interface {p1, p0, v0, v1}, Lorg/apache/cordova/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Crop operation not supported on this device"

    const-string v0, "CameraLauncher"

    .line 488
    invoke-static {v0, p1}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :try_start_1
    invoke-direct {p0, p2, p3}, Lorg/apache/cordova/camera/CameraLauncher;->processResultFromCamera(ILandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 492
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string p1, "Unable to write to file"

    .line 493
    invoke-static {v0, p1}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private processResultFromCamera(ILandroid/content/Intent;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 508
    new-instance v0, Lorg/apache/cordova/camera/ExifHelper;

    invoke-direct {v0}, Lorg/apache/cordova/camera/ExifHelper;-><init>()V

    .line 510
    iget-boolean v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->allowEdit:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 511
    iget-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedFilePath:Ljava/lang/String;

    goto :goto_0

    .line 512
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->imageFilePath:Ljava/lang/String;

    .line 514
    :goto_0
    iget v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 517
    :try_start_0
    invoke-virtual {v0, v1}, Lorg/apache/cordova/camera/ExifHelper;->createInFile(Ljava/lang/String;)V

    .line 518
    invoke-virtual {v0}, Lorg/apache/cordova/camera/ExifHelper;->readExifData()V

    .line 519
    invoke-virtual {v0}, Lorg/apache/cordova/camera/ExifHelper;->getOrientation()I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 522
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    move v2, v3

    .line 532
    :goto_1
    iget-boolean v4, p0, Lorg/apache/cordova/camera/CameraLauncher;->saveToPhotoAlbum:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 533
    invoke-direct {p0}, Lorg/apache/cordova/camera/CameraLauncher;->getPicturesPath()Lorg/apache/cordova/camera/GalleryPathVO;

    move-result-object v4

    .line 534
    new-instance v6, Ljava/io/File;

    invoke-virtual {v4}, Lorg/apache/cordova/camera/GalleryPathVO;->getGalleryPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 536
    iget-boolean v7, p0, Lorg/apache/cordova/camera/CameraLauncher;->allowEdit:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedUri:Landroid/net/Uri;

    if-eqz v7, :cond_2

    .line 537
    invoke-direct {p0, v7, v6}, Lorg/apache/cordova/camera/CameraLauncher;->writeUncompressedImage(Landroid/net/Uri;Landroid/net/Uri;)V

    goto :goto_2

    .line 539
    :cond_2
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1c

    if-gt v7, v8, :cond_3

    .line 540
    invoke-direct {p0, v6}, Lorg/apache/cordova/camera/CameraLauncher;->writeTakenPictureToGalleryLowerThanAndroidQ(Landroid/net/Uri;)V

    goto :goto_2

    .line 542
    :cond_3
    invoke-direct {p0, v4}, Lorg/apache/cordova/camera/CameraLauncher;->writeTakenPictureToGalleryStartingFromAndroidQ(Lorg/apache/cordova/camera/GalleryPathVO;)V

    goto :goto_2

    :cond_4
    move-object v6, v5

    :goto_2
    const-string v4, "Unable to create bitmap!"

    const-string v7, "I either have a null image path or bitmap"

    const-string v8, "CameraLauncher"

    const/4 v9, 0x1

    if-nez p1, :cond_7

    .line 549
    invoke-direct {p0, v1}, Lorg/apache/cordova/camera/CameraLauncher;->getScaledAndRotatedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_5

    .line 553
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "data"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    :cond_5
    move-object v5, p1

    if-nez v5, :cond_6

    .line 558
    invoke-static {v8, v7}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-virtual {p0, v4}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    return-void

    .line 564
    :cond_6
    iget p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    invoke-virtual {p0, v5, p1}, Lorg/apache/cordova/camera/CameraLauncher;->processPicture(Landroid/graphics/Bitmap;I)V

    .line 566
    iget-boolean p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->saveToPhotoAlbum:Z

    if-nez p1, :cond_e

    .line 567
    invoke-direct {p0, v3}, Lorg/apache/cordova/camera/CameraLauncher;->checkForDuplicateImage(I)V

    goto/16 :goto_4

    :cond_7
    if-ne p1, v9, :cond_f

    .line 574
    iget p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    const-string p2, ""

    const/4 v3, -0x1

    if-ne p1, v3, :cond_a

    iget p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    if-ne p1, v3, :cond_a

    iget p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->mQuality:I

    const/16 v3, 0x64

    if-ne p1, v3, :cond_a

    iget-boolean p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->correctOrientation:Z

    if-nez p1, :cond_a

    .line 579
    iget-boolean p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->saveToPhotoAlbum:Z

    if-eqz p1, :cond_8

    .line 580
    iget-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 582
    :cond_8
    iget p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/camera/CameraLauncher;->createCaptureFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 584
    iget-boolean p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->allowEdit:Z

    if-eqz p2, :cond_9

    iget-object p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedUri:Landroid/net/Uri;

    if-eqz p2, :cond_9

    .line 585
    iget-object p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedFilePath:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 586
    invoke-direct {p0, p2, p1}, Lorg/apache/cordova/camera/CameraLauncher;->writeUncompressedImage(Landroid/net/Uri;Landroid/net/Uri;)V

    goto :goto_3

    .line 588
    :cond_9
    iget-object p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->imageUri:Landroid/net/Uri;

    .line 589
    invoke-direct {p0, p2, p1}, Lorg/apache/cordova/camera/CameraLauncher;->writeUncompressedImage(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 592
    :goto_3
    iget-object p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_4

    .line 595
    :cond_a
    iget p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/camera/CameraLauncher;->createCaptureFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 596
    invoke-direct {p0, v1}, Lorg/apache/cordova/camera/CameraLauncher;->getScaledAndRotatedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_b

    .line 600
    invoke-static {v8, v7}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-virtual {p0, v4}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    return-void

    .line 607
    :cond_b
    iget-object p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p2

    .line 608
    iget v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    invoke-direct {p0, v1}, Lorg/apache/cordova/camera/CameraLauncher;->getCompressFormatForEncodingType(I)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v1

    .line 610
    iget v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->mQuality:I

    invoke-virtual {v5, v1, v3, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 611
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 614
    iget p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    if-nez p2, :cond_d

    .line 616
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    if-eq v2, v9, :cond_c

    .line 619
    invoke-virtual {v0}, Lorg/apache/cordova/camera/ExifHelper;->resetOrientation()V

    .line 620
    :cond_c
    invoke-virtual {v0, p2}, Lorg/apache/cordova/camera/ExifHelper;->createOutFile(Ljava/lang/String;)V

    .line 621
    invoke-virtual {v0}, Lorg/apache/cordova/camera/ExifHelper;->writeExifData()V

    .line 625
    :cond_d
    iget-object p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    .line 632
    :cond_e
    :goto_4
    iget-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->imageUri:Landroid/net/Uri;

    invoke-direct {p0, v9, p1, v6, v5}, Lorg/apache/cordova/camera/CameraLauncher;->cleanup(ILandroid/net/Uri;Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    return-void

    .line 629
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private processResultFromGallery(ILandroid/content/Intent;)V
    .locals 8

    const-string v0, "file://"

    .line 739
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_1

    .line 741
    iget-object p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedUri:Landroid/net/Uri;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "null data from photo library"

    .line 744
    invoke-virtual {p0, p1}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    return-void

    .line 749
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {p2, v1}, Lorg/apache/cordova/camera/FileHelper;->getRealPath(Landroid/net/Uri;Lorg/apache/cordova/CordovaInterface;)Ljava/lang/String;

    move-result-object v1

    .line 750
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "File location is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraLauncher"

    invoke-static {v3, v2}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    .line 754
    :goto_1
    iget-object v4, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {v2, v4}, Lorg/apache/cordova/camera/FileHelper;->getMimeType(Ljava/lang/String;Lorg/apache/cordova/CordovaInterface;)Ljava/lang/String;

    move-result-object v4

    if-nez v1, :cond_3

    const-string p1, "Error retrieving result."

    .line 757
    invoke-virtual {p0, p1}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 761
    :cond_3
    iget v5, p0, Lorg/apache/cordova/camera/CameraLauncher;->mediaType:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_e

    invoke-direct {p0, v4}, Lorg/apache/cordova/camera/CameraLauncher;->isImageMimeTypeProcessable(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    goto/16 :goto_4

    .line 767
    :cond_4
    iget v5, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_5

    iget v5, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    if-ne v5, v7, :cond_5

    if-ne p1, v6, :cond_5

    iget-boolean v5, p0, Lorg/apache/cordova/camera/CameraLauncher;->correctOrientation:Z

    if-nez v5, :cond_5

    .line 769
    invoke-direct {p0}, Lorg/apache/cordova/camera/CameraLauncher;->getMimetypeForEncodingType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 771
    iget-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1, v1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 775
    :cond_5
    :try_start_0
    invoke-direct {p0, v2}, Lorg/apache/cordova/camera/CameraLauncher;->getScaledAndRotatedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 777
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_6

    const-string p1, "I either have a null image path or bitmap"

    .line 780
    invoke-static {v3, p1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Unable to create bitmap!"

    .line 781
    invoke-virtual {p0, p1}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    return-void

    :cond_6
    if-nez p1, :cond_7

    .line 787
    iget p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    invoke-virtual {p0, v2, p1}, Lorg/apache/cordova/camera/CameraLauncher;->processPicture(Landroid/graphics/Bitmap;I)V

    goto :goto_3

    :cond_7
    if-ne p1, v6, :cond_c

    .line 793
    iget p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    if-lez p1, :cond_8

    iget p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    if-gtz p1, :cond_a

    :cond_8
    iget-boolean p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->correctOrientation:Z

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->orientationCorrected:Z

    if-nez p1, :cond_a

    .line 795
    :cond_9
    invoke-direct {p0}, Lorg/apache/cordova/camera/CameraLauncher;->getMimetypeForEncodingType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 798
    :cond_a
    :try_start_1
    invoke-direct {p0, v2, p2, v4}, Lorg/apache/cordova/camera/CameraLauncher;->outputModifiedBitmap(Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 801
    iget-object p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 804
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 805
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error retrieving image: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto :goto_3

    .line 808
    :cond_b
    iget-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1, v1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    :cond_c
    :goto_3
    if-eqz v2, :cond_d

    .line 812
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 815
    :cond_d
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_5

    .line 762
    :cond_e
    :goto_4
    iget-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1, v1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method private queryImgDB(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 7

    .line 1227
    iget-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method private refreshGallery(Landroid/net/Uri;)V
    .locals 2

    .line 669
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 671
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 672
    iget-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private scanForGallery(Landroid/net/Uri;)V
    .locals 1

    .line 1336
    iput-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->scanMe:Landroid/net/Uri;

    .line 1337
    iget-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->conn:Landroid/media/MediaScannerConnection;

    if-eqz p1, :cond_0

    .line 1338
    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 1340
    :cond_0
    new-instance p1, Landroid/media/MediaScannerConnection;

    iget-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->conn:Landroid/media/MediaScannerConnection;

    .line 1341
    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->connect()V

    return-void
.end method

.method private whichContentStore()Landroid/net/Uri;
    .locals 2

    .line 1294
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1295
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-object v0

    .line 1297
    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private writeTakenPictureToGalleryLowerThanAndroidQ(Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 637
    iget-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->imageUri:Landroid/net/Uri;

    invoke-direct {p0, v0, p1}, Lorg/apache/cordova/camera/CameraLauncher;->writeUncompressedImage(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 638
    invoke-direct {p0, p1}, Lorg/apache/cordova/camera/CameraLauncher;->refreshGallery(Landroid/net/Uri;)V

    return-void
.end method

.method private writeTakenPictureToGalleryStartingFromAndroidQ(Lorg/apache/cordova/camera/GalleryPathVO;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 645
    iget-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 646
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "_display_name"

    .line 647
    invoke-virtual {p1}, Lorg/apache/cordova/camera/GalleryPathVO;->getGalleryFileName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "mime_type"

    .line 648
    invoke-direct {p0}, Lorg/apache/cordova/camera/CameraLauncher;->getMimetypeForEncodingType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    .line 651
    iget-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->imageUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {v0, v1}, Lorg/apache/cordova/camera/FileHelper;->getInputStreamFromUriString(Ljava/lang/String;Lorg/apache/cordova/CordovaInterface;)Ljava/io/InputStream;

    move-result-object v0

    .line 652
    invoke-direct {p0, v0, p1}, Lorg/apache/cordova/camera/CameraLauncher;->writeUncompressedImage(Ljava/io/InputStream;Landroid/net/Uri;)V

    return-void
.end method

.method private writeUncompressedImage(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 978
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {p1, v0}, Lorg/apache/cordova/camera/FileHelper;->getInputStreamFromUriString(Ljava/lang/String;Lorg/apache/cordova/CordovaInterface;)Ljava/io/InputStream;

    move-result-object p1

    .line 979
    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/camera/CameraLauncher;->writeUncompressedImage(Ljava/io/InputStream;Landroid/net/Uri;)V

    return-void
.end method

.method private writeUncompressedImage(Ljava/io/InputStream;Landroid/net/Uri;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Exception while closing file input stream."

    const-string v1, "Exception while closing output stream."

    const-string v2, "CameraLauncher"

    const/4 v3, 0x0

    .line 943
    :try_start_0
    iget-object v4, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    const/16 p2, 0x1000

    new-array p2, p2, [B

    .line 946
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v5, 0x0

    .line 947
    invoke-virtual {v3, p2, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 949
    :cond_0
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 953
    :try_start_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 955
    :catch_0
    invoke-static {v2, v1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 960
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 962
    :catch_1
    invoke-static {v2, v0}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void

    :catchall_0
    move-exception p2

    if-eqz v3, :cond_3

    .line 953
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 955
    :catch_2
    invoke-static {v2, v1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    if-eqz p1, :cond_4

    .line 960
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 962
    :catch_3
    invoke-static {v2, v0}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    :cond_4
    :goto_4
    throw p2
.end method


# virtual methods
.method public calculateAspectRatio(II)[I
    .locals 8

    .line 1161
    iget v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    .line 1162
    iget v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    if-gtz v0, :cond_0

    if-gtz v1, :cond_0

    goto :goto_2

    :cond_0
    if-lez v0, :cond_1

    if-gtz v1, :cond_1

    int-to-double v1, v0

    int-to-double v3, p1

    div-double/2addr v1, v3

    int-to-double p1, p2

    mul-double/2addr v1, p1

    double-to-int p2, v1

    :goto_0
    move p1, v0

    goto :goto_2

    :cond_1
    if-gtz v0, :cond_2

    if-lez v1, :cond_2

    int-to-double v2, v1

    int-to-double v4, p2

    div-double/2addr v2, v4

    int-to-double p1, p1

    mul-double/2addr v2, p1

    double-to-int p1, v2

    goto :goto_1

    :cond_2
    int-to-double v2, v0

    int-to-double v4, v1

    div-double/2addr v2, v4

    int-to-double v4, p1

    int-to-double v6, p2

    div-double/2addr v4, v6

    cmpl-double v6, v4, v2

    if-lez v6, :cond_3

    mul-int/2addr p2, v0

    .line 1188
    div-int/2addr p2, p1

    goto :goto_0

    :cond_3
    cmpg-double v2, v4, v2

    if-gez v2, :cond_4

    mul-int/2addr p1, v1

    .line 1190
    div-int/2addr p1, p2

    goto :goto_1

    :cond_4
    move p1, v0

    :goto_1
    move p2, v1

    :goto_2
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    return-object v0
.end method

.method public callTakePicture(II)V
    .locals 9

    .line 279
    iget v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->mediaType:I

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lorg/apache/cordova/camera/CameraLauncher;->getPermissions(ZI)[Ljava/lang/String;

    move-result-object v0

    .line 281
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_1

    .line 282
    iget-boolean v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->saveToPhotoAlbum:Z

    if-eqz v2, :cond_0

    .line 283
    invoke-direct {p0, v0}, Lorg/apache/cordova/camera/CameraLauncher;->hasPermissions([Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_0

    .line 288
    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/cordova/camera/CameraLauncher;->hasPermissions([Ljava/lang/String;)Z

    move-result v2

    :goto_0
    const-string v3, "android.permission.CAMERA"

    .line 291
    invoke-static {p0, v3}, Lorg/apache/cordova/PermissionHelper;->hasPermission(Lorg/apache/cordova/CordovaPlugin;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_3

    .line 300
    :try_start_0
    iget-object v4, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 301
    iget-object v6, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/appcompat/app/AppCompatActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1000

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 303
    array-length v6, v4

    move v7, v5

    :goto_1
    if-ge v7, v6, :cond_4

    aget-object v8, v4, v7

    .line 304
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_2

    move v1, v5

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    move v1, v4

    :catch_0
    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 317
    invoke-virtual {p0, p1, p2}, Lorg/apache/cordova/camera/CameraLauncher;->takePicture(II)V

    goto :goto_3

    :cond_5
    if-eqz v2, :cond_6

    .line 319
    invoke-static {p0, v5, v3}, Lorg/apache/cordova/PermissionHelper;->requestPermission(Lorg/apache/cordova/CordovaPlugin;ILjava/lang/String;)V

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_7

    .line 321
    invoke-static {p0, v5, v0}, Lorg/apache/cordova/PermissionHelper;->requestPermissions(Lorg/apache/cordova/CordovaPlugin;I[Ljava/lang/String;)V

    goto :goto_3

    .line 323
    :cond_7
    iget p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->mediaType:I

    invoke-direct {p0, v5, p1}, Lorg/apache/cordova/camera/CameraLauncher;->getPermissions(ZI)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v5, p1}, Lorg/apache/cordova/PermissionHelper;->requestPermissions(Lorg/apache/cordova/CordovaPlugin;I[Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 146
    iput-object p3, p0, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 149
    iget-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    const-string v1, "APPLICATION_ID"

    invoke-static {v0, v1}, Lorg/apache/cordova/BuildHelper;->getBuildConfigValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->applicationId:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v1, "applicationId"

    iget-object v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->applicationId:Ljava/lang/String;

    const-string v0, "takePicture"

    .line 153
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    .line 154
    iput p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->srcType:I

    .line 155
    iput p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->destType:I

    .line 156
    iput-boolean v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->saveToPhotoAlbum:Z

    .line 157
    iput v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    .line 158
    iput v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    .line 159
    iput v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    .line 160
    iput v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->mediaType:I

    const/16 v1, 0x32

    .line 161
    iput v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->mQuality:I

    .line 164
    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    iput v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->destType:I

    const/4 v1, 0x2

    .line 165
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    iput v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->srcType:I

    .line 166
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    iput v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->mQuality:I

    const/4 v2, 0x3

    .line 167
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    iput v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    const/4 v2, 0x4

    .line 168
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    iput v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    const/4 v2, 0x5

    .line 169
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    iput v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    const/4 v2, 0x6

    .line 170
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    iput v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->mediaType:I

    const/4 v2, 0x7

    .line 171
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->allowEdit:Z

    const/16 v2, 0x8

    .line 172
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->correctOrientation:Z

    const/16 v2, 0x9

    .line 173
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->saveToPhotoAlbum:Z

    .line 177
    iget p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    const/4 v2, -0x1

    if-ge p2, p1, :cond_0

    .line 178
    iput v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    .line 180
    :cond_0
    iget p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    if-ge p2, p1, :cond_1

    .line 181
    iput v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    .line 186
    :cond_1
    iget p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    if-ne p2, v2, :cond_2

    iget p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    if-ne p2, v2, :cond_2

    iget p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->mQuality:I

    const/16 v2, 0x64

    if-ne p2, v2, :cond_2

    iget-boolean p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->correctOrientation:Z

    if-nez p2, :cond_2

    iget p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    if-ne p2, p1, :cond_2

    iget p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->srcType:I

    if-ne p2, p1, :cond_2

    .line 188
    iput v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    .line 192
    :cond_2
    :try_start_0
    iget p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->srcType:I

    if-ne p2, p1, :cond_3

    .line 193
    iget p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->destType:I

    iget v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    invoke-virtual {p0, p2, v0}, Lorg/apache/cordova/camera/CameraLauncher;->callTakePicture(II)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    if-ne p2, v1, :cond_6

    .line 197
    :cond_4
    iget p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->mediaType:I

    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/camera/CameraLauncher;->getPermissions(ZI)[Ljava/lang/String;

    move-result-object p2

    .line 198
    invoke-direct {p0, p2}, Lorg/apache/cordova/camera/CameraLauncher;->hasPermissions([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 199
    invoke-static {p0, p1, p2}, Lorg/apache/cordova/PermissionHelper;->requestPermissions(Lorg/apache/cordova/CordovaPlugin;I[Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_5
    iget p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->srcType:I

    iget v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->destType:I

    invoke-virtual {p0, p2, v0}, Lorg/apache/cordova/camera/CameraLauncher;->getImage(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_6
    :goto_0
    new-instance p2, Lorg/apache/cordova/PluginResult;

    sget-object v0, Lorg/apache/cordova/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p2, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .line 214
    invoke-virtual {p2, p1}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 215
    invoke-virtual {p3, p2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return p1

    :catch_0
    const-string p2, "Illegal Argument Exception"

    .line 207
    invoke-virtual {p3, p2}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 208
    new-instance p2, Lorg/apache/cordova/PluginResult;

    sget-object v0, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p2, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .line 209
    invoke-virtual {p3, p2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return p1

    :cond_7
    return v0
.end method

.method public failPicture(Ljava/lang/String;)V
    .locals 1

    .line 1332
    iget-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

.method public getImage(II)V
    .locals 6

    .line 404
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    .line 406
    iput-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedUri:Landroid/net/Uri;

    .line 407
    iput-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedFilePath:Ljava/lang/String;

    .line 408
    iget v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->mediaType:I

    const-string v2, "android.intent.category.OPENABLE"

    const-string v3, "android.intent.action.GET_CONTENT"

    const/4 v4, 0x1

    if-nez v1, :cond_4

    const-string v1, "image/*"

    .line 409
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    iget-boolean v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->allowEdit:Z

    if-eqz v1, :cond_3

    const-string v1, "android.intent.action.PICK"

    .line 411
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "crop"

    const-string v2, "true"

    .line 412
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    iget v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    if-lez v1, :cond_0

    const-string v2, "outputX"

    .line 414
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 416
    :cond_0
    iget v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    if-lez v1, :cond_1

    const-string v2, "outputY"

    .line 417
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 419
    :cond_1
    iget v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    if-lez v1, :cond_2

    iget v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    if-lez v2, :cond_2

    if-ne v2, v1, :cond_2

    const-string v1, "aspectX"

    .line 420
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "aspectY"

    .line 421
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    const/4 v1, 0x0

    .line 423
    invoke-direct {p0, v1}, Lorg/apache/cordova/camera/CameraLauncher;->createCaptureFile(I)Ljava/io/File;

    move-result-object v1

    .line 424
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedFilePath:Ljava/lang/String;

    .line 425
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedUri:Landroid/net/Uri;

    const-string v2, "output"

    .line 426
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 428
    :cond_3
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    if-ne v1, v4, :cond_5

    const-string v1, "video/*"

    .line 432
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Get Video"

    goto :goto_1

    :cond_5
    const/4 v5, 0x2

    if-ne v1, v5, :cond_6

    const-string v1, "*/*"

    .line 439
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Get All"

    goto :goto_1

    :cond_6
    :goto_0
    const-string v1, "Get Picture"

    .line 444
    :goto_1
    iget-object v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    if-eqz v2, :cond_7

    .line 445
    iget-object v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    add-int/2addr p1, v4

    mul-int/lit8 p1, p1, 0x10

    add-int/2addr p1, p2

    add-int/2addr p1, v4

    invoke-interface {v2, p0, v0, p1}, Lorg/apache/cordova/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V

    :cond_7
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 845
    div-int/lit8 v0, p1, 0x10

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 846
    rem-int/lit8 v2, p1, 0x10

    sub-int/2addr v2, v1

    const-string v3, "Did not complete!"

    const-string v4, "No Image Selected"

    const/4 v5, -0x1

    const/16 v6, 0x64

    if-lt p1, v6, :cond_2

    if-ne p2, v5, :cond_0

    sub-int/2addr p1, v6

    .line 856
    :try_start_0
    invoke-direct {p0, p1, p3}, Lorg/apache/cordova/camera/CameraLauncher;->processResultFromCamera(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 858
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string p1, "CameraLauncher"

    const-string p2, "Unable to write to file"

    .line 859
    invoke-static {p1, p2}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 864
    invoke-virtual {p0, v4}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 869
    :cond_1
    invoke-virtual {p0, v3}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    if-ne v0, v1, :cond_6

    if-ne p2, v5, :cond_4

    .line 877
    :try_start_1
    iget-boolean p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->allowEdit:Z

    if-eqz p1, :cond_3

    .line 878
    iget-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->applicationId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ".cordova.plugin.camera.provider"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    .line 880
    invoke-direct {p0, v0}, Lorg/apache/cordova/camera/CameraLauncher;->createCaptureFile(I)Ljava/io/File;

    move-result-object v0

    .line 878
    invoke-static {p1, p2, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 881
    invoke-direct {p0, p1, v2, p3}, Lorg/apache/cordova/camera/CameraLauncher;->performCrop(Landroid/net/Uri;ILandroid/content/Intent;)V

    goto :goto_0

    .line 883
    :cond_3
    invoke-direct {p0, v2, p3}, Lorg/apache/cordova/camera/CameraLauncher;->processResultFromCamera(ILandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 886
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 887
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error capturing image: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-nez p2, :cond_5

    .line 893
    invoke-virtual {p0, v4}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto :goto_0

    .line 898
    :cond_5
    invoke-virtual {p0, v3}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    const/4 p1, 0x2

    if-ne v0, p1, :cond_a

    :cond_7
    if-ne p2, v5, :cond_8

    if-eqz p3, :cond_8

    .line 906
    iget-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lorg/apache/cordova/camera/CameraLauncher$1;

    invoke-direct {p2, p0, v2, p3}, Lorg/apache/cordova/camera/CameraLauncher$1;-><init>(Lorg/apache/cordova/camera/CameraLauncher;ILandroid/content/Intent;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_8
    if-nez p2, :cond_9

    .line 912
    invoke-virtual {p0, v4}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const-string p1, "Selection did not complete!"

    .line 914
    invoke-virtual {p0, p1}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    :cond_a
    :goto_0
    return-void
.end method

.method public onMediaScannerConnected()V
    .locals 3

    .line 1346
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->conn:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->scanMe:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "CameraLauncher"

    const-string v1, "Can\'t scan file in MediaScanner after taking picture"

    .line 1348
    invoke-static {v0, v1}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onRequestPermissionResult(I[Ljava/lang/String;[I)V
    .locals 3

    .line 1359
    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget v1, p3, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1361
    iget-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance p2, Lorg/apache/cordova/PluginResult;

    sget-object p3, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    const/16 v0, 0x14

    invoke-direct {p2, p3, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;I)V

    invoke-virtual {p1, p2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    goto :goto_1

    .line 1370
    :cond_2
    iget p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->srcType:I

    iget p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->destType:I

    invoke-virtual {p0, p1, p2}, Lorg/apache/cordova/camera/CameraLauncher;->getImage(II)V

    goto :goto_1

    .line 1367
    :cond_3
    iget p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->destType:I

    iget p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    invoke-virtual {p0, p1, p2}, Lorg/apache/cordova/camera/CameraLauncher;->takePicture(II)V

    :goto_1
    return-void
.end method

.method public onRestoreStateForActivityResult(Landroid/os/Bundle;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    const-string v0, "destType"

    .line 1410
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->destType:I

    const-string v0, "srcType"

    .line 1411
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->srcType:I

    const-string v0, "mQuality"

    .line 1412
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->mQuality:I

    const-string v0, "targetWidth"

    .line 1413
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    const-string v0, "targetHeight"

    .line 1414
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    const-string v0, "encodingType"

    .line 1415
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    const-string v0, "mediaType"

    .line 1416
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->mediaType:I

    const-string v0, "numPics"

    .line 1417
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->numPics:I

    const-string v0, "allowEdit"

    .line 1418
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->allowEdit:Z

    const-string v0, "correctOrientation"

    .line 1419
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->correctOrientation:Z

    const-string v0, "saveToPhotoAlbum"

    .line 1420
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->saveToPhotoAlbum:Z

    const-string v0, "croppedUri"

    .line 1422
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1423
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedUri:Landroid/net/Uri;

    :cond_0
    const-string v0, "imageUri"

    .line 1426
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1428
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->imageUri:Landroid/net/Uri;

    :cond_1
    const-string v0, "imageFilePath"

    .line 1431
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1432
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->imageFilePath:Ljava/lang/String;

    .line 1435
    :cond_2
    iput-object p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 1381
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "destType"

    .line 1382
    iget v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->destType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "srcType"

    .line 1383
    iget v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->srcType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mQuality"

    .line 1384
    iget v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->mQuality:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "targetWidth"

    .line 1385
    iget v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "targetHeight"

    .line 1386
    iget v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "encodingType"

    .line 1387
    iget v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mediaType"

    .line 1388
    iget v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->mediaType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "numPics"

    .line 1389
    iget v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->numPics:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "allowEdit"

    .line 1390
    iget-boolean v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->allowEdit:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "correctOrientation"

    .line 1391
    iget-boolean v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->correctOrientation:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "saveToPhotoAlbum"

    .line 1392
    iget-boolean v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->saveToPhotoAlbum:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1394
    iget-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    const-string v1, "croppedUri"

    .line 1395
    iget-object v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->imageUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    const-string v1, "imageUri"

    .line 1399
    iget-object v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->imageFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    :cond_1
    iget-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->imageFilePath:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "imageFilePath"

    .line 1403
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 1354
    iget-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->conn:Landroid/media/MediaScannerConnection;

    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->disconnect()V

    return-void
.end method

.method public processPicture(Landroid/graphics/Bitmap;I)V
    .locals 2

    .line 1307
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1308
    invoke-direct {p0, p2}, Lorg/apache/cordova/camera/CameraLauncher;->getCompressFormatForEncodingType(I)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object p2

    .line 1311
    :try_start_0
    iget v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->mQuality:I

    invoke-virtual {p1, p2, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1312
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 p2, 0x2

    .line 1313
    invoke-static {p1, p2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    .line 1314
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    .line 1315
    iget-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1, p2}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1321
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error compressing image: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public takePicture(II)V
    .locals 4

    .line 330
    invoke-direct {p0}, Lorg/apache/cordova/camera/CameraLauncher;->whichContentStore()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/cordova/camera/CameraLauncher;->queryImgDB(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->numPics:I

    .line 333
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    invoke-direct {p0, p2}, Lorg/apache/cordova/camera/CameraLauncher;->createCaptureFile(I)Ljava/io/File;

    move-result-object p2

    .line 337
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->imageFilePath:Ljava/lang/String;

    .line 338
    iget-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->applicationId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".cordova.plugin.camera.provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->imageUri:Landroid/net/Uri;

    const-string v1, "output"

    .line 341
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p2, 0x2

    .line 343
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 345
    iget-object p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    if-eqz p2, :cond_1

    .line 347
    iget-object p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 348
    invoke-virtual {v0, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 350
    iget-object p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    add-int/lit8 p1, p1, 0x20

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/cordova/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const-string p1, "CameraLauncher"

    const-string p2, "Error: You don\'t have a default camera.  Your device may not be CTS complaint."

    .line 354
    invoke-static {p1, p2}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
