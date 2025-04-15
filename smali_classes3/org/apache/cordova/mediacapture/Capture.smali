.class public Lorg/apache/cordova/mediacapture/Capture;
.super Lorg/apache/cordova/CordovaPlugin;
.source "Capture.java"


# static fields
.field private static final AUDIO_3GPP:Ljava/lang/String; = "audio/3gpp"

.field private static final AUDIO_TYPES:[Ljava/lang/String;

.field private static final CAPTURE_AUDIO:I = 0x0

.field private static final CAPTURE_IMAGE:I = 0x1

.field private static final CAPTURE_INTERNAL_ERR:I = 0x0

.field private static final CAPTURE_NOT_SUPPORTED:I = 0x14

.field private static final CAPTURE_NO_MEDIA_FILES:I = 0x3

.field private static final CAPTURE_PERMISSION_DENIED:I = 0x4

.field private static final CAPTURE_VIDEO:I = 0x2

.field private static final IMAGE_JPEG:Ljava/lang/String; = "image/jpeg"

.field private static final LOG_TAG:Ljava/lang/String; = "Capture"

.field private static final VIDEO_3GPP:Ljava/lang/String; = "video/3gpp"

.field private static final VIDEO_MP4:Ljava/lang/String; = "video/mp4"

.field private static storagePermissions:[Ljava/lang/String;


# instance fields
.field private cameraPermissionInManifest:Z

.field private imageUri:Landroid/net/Uri;

.field private numPics:I

.field private final pendingRequests:Lorg/apache/cordova/mediacapture/PendingRequests;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "audio/amr"

    const-string v1, "audio/wav"

    const-string v2, "audio/3gpp"

    const-string v3, "audio/aac"

    .line 65
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/cordova/mediacapture/Capture;->AUDIO_TYPES:[Ljava/lang/String;

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 83
    sput-object v0, Lorg/apache/cordova/mediacapture/Capture;->storagePermissions:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 86
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/cordova/mediacapture/Capture;->storagePermissions:[Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 95
    new-instance v0, Lorg/apache/cordova/mediacapture/PendingRequests;

    invoke-direct {v0}, Lorg/apache/cordova/mediacapture/PendingRequests;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/mediacapture/Capture;->pendingRequests:Lorg/apache/cordova/mediacapture/PendingRequests;

    return-void
.end method

.method private captureAudio(Lorg/apache/cordova/mediacapture/PendingRequests$Request;)V
    .locals 3

    const-string v0, "android.permission.READ_MEDIA_AUDIO"

    .line 278
    invoke-direct {p0, p1, v0}, Lorg/apache/cordova/mediacapture/Capture;->isMissingPermissions(Lorg/apache/cordova/mediacapture/PendingRequests$Request;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 281
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    iget-object v1, p0, Lorg/apache/cordova/mediacapture/Capture;->cordova:Lorg/apache/cordova/CordovaInterface;

    iget v2, p1, Lorg/apache/cordova/mediacapture/PendingRequests$Request;->requestCode:I

    invoke-interface {v1, p0, v0, v2}, Lorg/apache/cordova/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    :catch_0
    iget-object v0, p0, Lorg/apache/cordova/mediacapture/Capture;->pendingRequests:Lorg/apache/cordova/mediacapture/PendingRequests;

    const/16 v1, 0x14

    const-string v2, "No Activity found to handle Audio Capture."

    invoke-direct {p0, v1, v2}, Lorg/apache/cordova/mediacapture/Capture;->createErrorObject(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/cordova/mediacapture/PendingRequests;->resolveWithFailure(Lorg/apache/cordova/mediacapture/PendingRequests$Request;Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method

.method private captureImage(Lorg/apache/cordova/mediacapture/PendingRequests$Request;)V
    .locals 5

    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    .line 303
    invoke-direct {p0, p1, v0}, Lorg/apache/cordova/mediacapture/Capture;->isMissingCameraPermissions(Lorg/apache/cordova/mediacapture/PendingRequests$Request;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 306
    :cond_0
    invoke-direct {p0}, Lorg/apache/cordova/mediacapture/Capture;->whichContentStore()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/cordova/mediacapture/Capture;->queryImgDB(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lorg/apache/cordova/mediacapture/Capture;->numPics:I

    .line 308
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lorg/apache/cordova/mediacapture/Capture;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 311
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "mime_type"

    const-string v4, "image/jpeg"

    .line 312
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/cordova/mediacapture/Capture;->imageUri:Landroid/net/Uri;

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Taking a picture and saving to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/cordova/mediacapture/Capture;->imageUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Capture"

    invoke-static {v2, v1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "output"

    .line 316
    iget-object v2, p0, Lorg/apache/cordova/mediacapture/Capture;->imageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 318
    iget-object v1, p0, Lorg/apache/cordova/mediacapture/Capture;->cordova:Lorg/apache/cordova/CordovaInterface;

    iget p1, p1, Lorg/apache/cordova/mediacapture/PendingRequests$Request;->requestCode:I

    invoke-interface {v1, p0, v0, p1}, Lorg/apache/cordova/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V

    return-void
.end method

.method private captureVideo(Lorg/apache/cordova/mediacapture/PendingRequests$Request;)V
    .locals 3

    const-string v0, "android.permission.READ_MEDIA_VIDEO"

    .line 330
    invoke-direct {p0, p1, v0}, Lorg/apache/cordova/mediacapture/Capture;->isMissingCameraPermissions(Lorg/apache/cordova/mediacapture/PendingRequests$Request;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 332
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.durationLimit"

    .line 335
    iget v2, p1, Lorg/apache/cordova/mediacapture/PendingRequests$Request;->duration:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.videoQuality"

    .line 336
    iget v2, p1, Lorg/apache/cordova/mediacapture/PendingRequests$Request;->quality:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    iget-object v1, p0, Lorg/apache/cordova/mediacapture/Capture;->cordova:Lorg/apache/cordova/CordovaInterface;

    iget p1, p1, Lorg/apache/cordova/mediacapture/PendingRequests$Request;->requestCode:I

    invoke-interface {v1, p0, v0, p1}, Lorg/apache/cordova/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V

    return-void
.end method

.method private checkForDuplicateImage()V
    .locals 4

    .line 549
    invoke-direct {p0}, Lorg/apache/cordova/mediacapture/Capture;->whichContentStore()Landroid/net/Uri;

    move-result-object v0

    .line 550
    invoke-direct {p0, v0}, Lorg/apache/cordova/mediacapture/Capture;->queryImgDB(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v1

    .line 551
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 554
    iget v3, p0, Lorg/apache/cordova/mediacapture/Capture;->numPics:I

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 555
    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    const-string v2, "_id"

    .line 556
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 557
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 558
    iget-object v1, p0, Lorg/apache/cordova/mediacapture/Capture;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private createErrorObject(ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 520
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "code"

    .line 522
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "message"

    .line 523
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private createMediaFile(Landroid/net/Uri;)Lorg/json/JSONObject;
    .locals 6

    .line 467
    iget-object v0, p0, Lorg/apache/cordova/mediacapture/Capture;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebView;->getResourceApi()Lorg/apache/cordova/CordovaResourceApi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CordovaResourceApi;->mapUriToFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 468
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 470
    iget-object v2, p0, Lorg/apache/cordova/mediacapture/Capture;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :try_start_0
    const-string v3, "getPluginManager"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    .line 473
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 474
    iget-object v5, p0, Lorg/apache/cordova/mediacapture/Capture;->webView:Lorg/apache/cordova/CordovaWebView;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/cordova/PluginManager;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_0

    :try_start_1
    const-string v4, "pluginManager"

    .line 481
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 482
    iget-object v4, p0, Lorg/apache/cordova/mediacapture/Capture;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/cordova/PluginManager;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v2

    :catch_1
    :cond_0
    const-string v2, "File"

    .line 487
    invoke-virtual {v3, v2}, Lorg/apache/cordova/PluginManager;->getPlugin(Ljava/lang/String;)Lorg/apache/cordova/CordovaPlugin;

    move-result-object v2

    check-cast v2, Lorg/apache/cordova/file/FileUtils;

    .line 488
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/cordova/file/FileUtils;->filesystemURLforLocalPath(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v2

    :try_start_2
    const-string v3, "name"

    .line 492
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "fullPath"

    .line 493
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    const-string v3, "localURL"

    .line 495
    invoke-virtual {v2}, Lorg/apache/cordova/file/LocalFilesystemURL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 500
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".3gp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    const-string v3, "type"

    if-nez v2, :cond_3

    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ".3gpp"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 507
    :cond_2
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    iget-object v2, p0, Lorg/apache/cordova/mediacapture/Capture;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {p1, v2}, Lorg/apache/cordova/mediacapture/FileHelper;->getMimeType(Landroid/net/Uri;Lorg/apache/cordova/CordovaInterface;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 501
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "/audio/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "audio/3gpp"

    .line 502
    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_4
    const-string p1, "video/3gpp"

    .line 504
    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2
    const-string p1, "lastModifiedDate"

    .line 510
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "size"

    .line 511
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 514
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    return-object v1
.end method

.method private static createWritableFile(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 323
    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setWritable(ZZ)Z

    return-void
.end method

.method private executeRequest(Lorg/apache/cordova/mediacapture/PendingRequests$Request;)V
    .locals 2

    .line 575
    iget v0, p1, Lorg/apache/cordova/mediacapture/PendingRequests$Request;->action:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 583
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/cordova/mediacapture/Capture;->captureVideo(Lorg/apache/cordova/mediacapture/PendingRequests$Request;)V

    goto :goto_0

    .line 580
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/cordova/mediacapture/Capture;->captureImage(Lorg/apache/cordova/mediacapture/PendingRequests$Request;)V

    goto :goto_0

    .line 577
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/cordova/mediacapture/Capture;->captureAudio(Lorg/apache/cordova/mediacapture/PendingRequests$Request;)V

    :goto_0
    return-void
.end method

.method private getAudioVideoData(Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 224
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 226
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    const-string p1, "duration"

    .line 228
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    const-string p1, "height"

    .line 230
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "width"

    .line 231
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Capture"

    const-string p3, "Error: loading video file"

    .line 234
    invoke-static {p1, p3}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object p2
.end method

.method private getFormatData(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "file:"

    .line 169
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 170
    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "height"

    const/4 v3, 0x0

    .line 172
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "width"

    .line 173
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "bitrate"

    .line 174
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "duration"

    .line 175
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "codecs"

    const-string v4, ""

    .line 176
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_1

    .line 180
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "null"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 181
    :cond_1
    iget-object p2, p0, Lorg/apache/cordova/mediacapture/Capture;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {v0, p2}, Lorg/apache/cordova/mediacapture/FileHelper;->getMimeType(Landroid/net/Uri;Lorg/apache/cordova/CordovaInterface;)Ljava/lang/String;

    move-result-object p2

    .line 183
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Mime type = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Capture"

    invoke-static {v4, v2}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "image/jpeg"

    .line 185
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, ".jpg"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 188
    :cond_3
    sget-object v0, Lorg/apache/cordova/mediacapture/Capture;->AUDIO_TYPES:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 189
    invoke-direct {p0, p1, v1, v3}, Lorg/apache/cordova/mediacapture/Capture;->getAudioVideoData(Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_2

    :cond_4
    const-string v0, "video/3gpp"

    .line 191
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "video/mp4"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    :cond_5
    const/4 p2, 0x1

    .line 192
    invoke-direct {p0, p1, v1, p2}, Lorg/apache/cordova/mediacapture/Capture;->getAudioVideoData(Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_2

    .line 186
    :cond_6
    :goto_1
    invoke-direct {p0, v0, v1}, Lorg/apache/cordova/mediacapture/Capture;->getImageData(Landroid/net/Uri;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    :cond_7
    :goto_2
    return-object v1
.end method

.method private getImageData(Landroid/net/Uri;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 206
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 207
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 208
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const-string p1, "height"

    .line 209
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "width"

    .line 210
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object p2
.end method

.method private getTempDirectoryPath()Ljava/lang/String;
    .locals 1

    .line 292
    iget-object v0, p0, Lorg/apache/cordova/mediacapture/Capture;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 296
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isMissingCameraPermissions(Lorg/apache/cordova/mediacapture/PendingRequests$Request;Ljava/lang/String;)Z
    .locals 3

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lorg/apache/cordova/mediacapture/Capture;->storagePermissions:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 265
    iget-boolean v1, p0, Lorg/apache/cordova/mediacapture/Capture;->cameraPermissionInManifest:Z

    if-eqz v1, :cond_0

    const-string v1, "android.permission.CAMERA"

    .line 266
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 268
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_1

    .line 269
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_1
    invoke-direct {p0, p1, v0}, Lorg/apache/cordova/mediacapture/Capture;->isMissingPermissions(Lorg/apache/cordova/mediacapture/PendingRequests$Request;Ljava/util/ArrayList;)Z

    move-result p1

    return p1
.end method

.method private isMissingPermissions(Lorg/apache/cordova/mediacapture/PendingRequests$Request;Ljava/lang/String;)Z
    .locals 3

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lorg/apache/cordova/mediacapture/Capture;->storagePermissions:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p2, :cond_0

    .line 257
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    .line 258
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/apache/cordova/mediacapture/Capture;->isMissingPermissions(Lorg/apache/cordova/mediacapture/PendingRequests$Request;Ljava/util/ArrayList;)Z

    move-result p1

    return p1
.end method

.method private isMissingPermissions(Lorg/apache/cordova/mediacapture/PendingRequests$Request;Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/cordova/mediacapture/PendingRequests$Request;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 242
    invoke-static {p0, v1}, Lorg/apache/cordova/PermissionHelper;->hasPermission(Lorg/apache/cordova/CordovaPlugin;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 243
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_3

    .line 249
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 250
    iget p1, p1, Lorg/apache/cordova/mediacapture/PendingRequests$Request;->requestCode:I

    invoke-static {p0, p1, v0}, Lorg/apache/cordova/PermissionHelper;->requestPermissions(Lorg/apache/cordova/CordovaPlugin;I[Ljava/lang/String;)V

    :cond_3
    return p2
.end method

.method private queryImgDB(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 7

    .line 536
    iget-object v0, p0, Lorg/apache/cordova/mediacapture/Capture;->cordova:Lorg/apache/cordova/CordovaInterface;

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

.method private whichContentStore()Landroid/net/Uri;
    .locals 2

    .line 567
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-object v0

    .line 570
    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "getFormatData"

    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/mediacapture/Capture;->getFormatData(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 139
    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    return v1

    .line 143
    :cond_0
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "captureAudio"

    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object p1, p0, Lorg/apache/cordova/mediacapture/Capture;->pendingRequests:Lorg/apache/cordova/mediacapture/PendingRequests;

    invoke-virtual {p1, v2, p2, p3}, Lorg/apache/cordova/mediacapture/PendingRequests;->createRequest(ILorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/mediacapture/PendingRequests$Request;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/cordova/mediacapture/Capture;->captureAudio(Lorg/apache/cordova/mediacapture/PendingRequests$Request;)V

    goto :goto_0

    :cond_1
    const-string v0, "captureImage"

    .line 148
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    iget-object p1, p0, Lorg/apache/cordova/mediacapture/Capture;->pendingRequests:Lorg/apache/cordova/mediacapture/PendingRequests;

    invoke-virtual {p1, v1, p2, p3}, Lorg/apache/cordova/mediacapture/PendingRequests;->createRequest(ILorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/mediacapture/PendingRequests$Request;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/cordova/mediacapture/Capture;->captureImage(Lorg/apache/cordova/mediacapture/PendingRequests$Request;)V

    goto :goto_0

    :cond_2
    const-string v0, "captureVideo"

    .line 151
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 152
    iget-object p1, p0, Lorg/apache/cordova/mediacapture/Capture;->pendingRequests:Lorg/apache/cordova/mediacapture/PendingRequests;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2, p3}, Lorg/apache/cordova/mediacapture/PendingRequests;->createRequest(ILorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/mediacapture/PendingRequests$Request;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/cordova/mediacapture/Capture;->captureVideo(Lorg/apache/cordova/mediacapture/PendingRequests$Request;)V

    :goto_0
    return v1

    :cond_3
    return v2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 351
    iget-object v0, p0, Lorg/apache/cordova/mediacapture/Capture;->pendingRequests:Lorg/apache/cordova/mediacapture/PendingRequests;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/mediacapture/PendingRequests;->get(I)Lorg/apache/cordova/mediacapture/PendingRequests$Request;

    move-result-object p1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 355
    new-instance p2, Lorg/apache/cordova/mediacapture/Capture$1;

    invoke-direct {p2, p0, p1, p3}, Lorg/apache/cordova/mediacapture/Capture$1;-><init>(Lorg/apache/cordova/mediacapture/Capture;Lorg/apache/cordova/mediacapture/PendingRequests$Request;Landroid/content/Intent;)V

    .line 372
    iget-object p1, p0, Lorg/apache/cordova/mediacapture/Capture;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x3

    if-nez p2, :cond_2

    .line 377
    iget-object p2, p1, Lorg/apache/cordova/mediacapture/PendingRequests$Request;->results:Lorg/json/JSONArray;

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_1

    .line 378
    iget-object p2, p0, Lorg/apache/cordova/mediacapture/Capture;->pendingRequests:Lorg/apache/cordova/mediacapture/PendingRequests;

    invoke-virtual {p2, p1}, Lorg/apache/cordova/mediacapture/PendingRequests;->resolveWithSuccess(Lorg/apache/cordova/mediacapture/PendingRequests$Request;)V

    goto :goto_0

    .line 382
    :cond_1
    iget-object p2, p0, Lorg/apache/cordova/mediacapture/Capture;->pendingRequests:Lorg/apache/cordova/mediacapture/PendingRequests;

    const-string v0, "Canceled."

    invoke-direct {p0, p3, v0}, Lorg/apache/cordova/mediacapture/Capture;->createErrorObject(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lorg/apache/cordova/mediacapture/PendingRequests;->resolveWithFailure(Lorg/apache/cordova/mediacapture/PendingRequests$Request;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 388
    :cond_2
    iget-object p2, p1, Lorg/apache/cordova/mediacapture/PendingRequests$Request;->results:Lorg/json/JSONArray;

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_3

    .line 389
    iget-object p2, p0, Lorg/apache/cordova/mediacapture/Capture;->pendingRequests:Lorg/apache/cordova/mediacapture/PendingRequests;

    invoke-virtual {p2, p1}, Lorg/apache/cordova/mediacapture/PendingRequests;->resolveWithSuccess(Lorg/apache/cordova/mediacapture/PendingRequests$Request;)V

    goto :goto_0

    .line 393
    :cond_3
    iget-object p2, p0, Lorg/apache/cordova/mediacapture/Capture;->pendingRequests:Lorg/apache/cordova/mediacapture/PendingRequests;

    const-string v0, "Did not complete!"

    invoke-direct {p0, p3, v0}, Lorg/apache/cordova/mediacapture/Capture;->createErrorObject(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lorg/apache/cordova/mediacapture/PendingRequests;->resolveWithFailure(Lorg/apache/cordova/mediacapture/PendingRequests$Request;Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method

.method public onAudioActivityResult(Lorg/apache/cordova/mediacapture/PendingRequests$Request;Landroid/content/Intent;)V
    .locals 4

    .line 401
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    .line 403
    iget-object v0, p1, Lorg/apache/cordova/mediacapture/PendingRequests$Request;->results:Lorg/json/JSONArray;

    invoke-direct {p0, p2}, Lorg/apache/cordova/mediacapture/Capture;->createMediaFile(Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 405
    iget-object p2, p1, Lorg/apache/cordova/mediacapture/PendingRequests$Request;->results:Lorg/json/JSONArray;

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p2

    int-to-long v0, p2

    iget-wide v2, p1, Lorg/apache/cordova/mediacapture/PendingRequests$Request;->limit:J

    cmp-long p2, v0, v2

    if-ltz p2, :cond_0

    .line 407
    iget-object p2, p0, Lorg/apache/cordova/mediacapture/Capture;->pendingRequests:Lorg/apache/cordova/mediacapture/PendingRequests;

    invoke-virtual {p2, p1}, Lorg/apache/cordova/mediacapture/PendingRequests;->resolveWithSuccess(Lorg/apache/cordova/mediacapture/PendingRequests$Request;)V

    goto :goto_0

    .line 410
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/cordova/mediacapture/Capture;->captureAudio(Lorg/apache/cordova/mediacapture/PendingRequests$Request;)V

    :goto_0
    return-void
.end method

.method public onImageActivityResult(Lorg/apache/cordova/mediacapture/PendingRequests$Request;)V
    .locals 4

    .line 416
    iget-object v0, p1, Lorg/apache/cordova/mediacapture/PendingRequests$Request;->results:Lorg/json/JSONArray;

    iget-object v1, p0, Lorg/apache/cordova/mediacapture/Capture;->imageUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lorg/apache/cordova/mediacapture/Capture;->createMediaFile(Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 418
    invoke-direct {p0}, Lorg/apache/cordova/mediacapture/Capture;->checkForDuplicateImage()V

    .line 420
    iget-object v0, p1, Lorg/apache/cordova/mediacapture/PendingRequests$Request;->results:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p1, Lorg/apache/cordova/mediacapture/PendingRequests$Request;->limit:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 422
    iget-object v0, p0, Lorg/apache/cordova/mediacapture/Capture;->pendingRequests:Lorg/apache/cordova/mediacapture/PendingRequests;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/mediacapture/PendingRequests;->resolveWithSuccess(Lorg/apache/cordova/mediacapture/PendingRequests$Request;)V

    goto :goto_0

    .line 425
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/cordova/mediacapture/Capture;->captureImage(Lorg/apache/cordova/mediacapture/PendingRequests$Request;)V

    :goto_0
    return-void
.end method

.method public onRequestPermissionResult(I[Ljava/lang/String;[I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 590
    iget-object p2, p0, Lorg/apache/cordova/mediacapture/Capture;->pendingRequests:Lorg/apache/cordova/mediacapture/PendingRequests;

    invoke-virtual {p2, p1}, Lorg/apache/cordova/mediacapture/PendingRequests;->get(I)Lorg/apache/cordova/mediacapture/PendingRequests$Request;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 594
    array-length p2, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    aget v2, p3, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 602
    invoke-direct {p0, p1}, Lorg/apache/cordova/mediacapture/Capture;->executeRequest(Lorg/apache/cordova/mediacapture/PendingRequests$Request;)V

    goto :goto_2

    .line 604
    :cond_2
    iget-object p2, p0, Lorg/apache/cordova/mediacapture/Capture;->pendingRequests:Lorg/apache/cordova/mediacapture/PendingRequests;

    const/4 p3, 0x4

    const-string v0, "Permission denied."

    invoke-direct {p0, p3, v0}, Lorg/apache/cordova/mediacapture/Capture;->createErrorObject(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lorg/apache/cordova/mediacapture/PendingRequests;->resolveWithFailure(Lorg/apache/cordova/mediacapture/PendingRequests$Request;Lorg/json/JSONObject;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public onRestoreStateForActivityResult(Landroid/os/Bundle;Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    .line 614
    iget-object v0, p0, Lorg/apache/cordova/mediacapture/Capture;->pendingRequests:Lorg/apache/cordova/mediacapture/PendingRequests;

    invoke-virtual {v0, p1, p2}, Lorg/apache/cordova/mediacapture/PendingRequests;->setLastSavedState(Landroid/os/Bundle;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 1

    .line 610
    iget-object v0, p0, Lorg/apache/cordova/mediacapture/Capture;->pendingRequests:Lorg/apache/cordova/mediacapture/PendingRequests;

    invoke-virtual {v0}, Lorg/apache/cordova/mediacapture/PendingRequests;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public onVideoActivityResult(Lorg/apache/cordova/mediacapture/PendingRequests$Request;Landroid/content/Intent;)V
    .locals 4

    if-eqz p2, :cond_0

    .line 434
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    .line 438
    new-instance p2, Ljava/io/File;

    invoke-direct {p0}, Lorg/apache/cordova/mediacapture/Capture;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Capture.avi"

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    :cond_1
    if-nez p2, :cond_2

    .line 444
    iget-object p2, p0, Lorg/apache/cordova/mediacapture/Capture;->pendingRequests:Lorg/apache/cordova/mediacapture/PendingRequests;

    const/4 v0, 0x3

    const-string v1, "Error: data is null"

    invoke-direct {p0, v0, v1}, Lorg/apache/cordova/mediacapture/Capture;->createErrorObject(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/apache/cordova/mediacapture/PendingRequests;->resolveWithFailure(Lorg/apache/cordova/mediacapture/PendingRequests$Request;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 447
    :cond_2
    iget-object v0, p1, Lorg/apache/cordova/mediacapture/PendingRequests$Request;->results:Lorg/json/JSONArray;

    invoke-direct {p0, p2}, Lorg/apache/cordova/mediacapture/Capture;->createMediaFile(Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 449
    iget-object p2, p1, Lorg/apache/cordova/mediacapture/PendingRequests$Request;->results:Lorg/json/JSONArray;

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p2

    int-to-long v0, p2

    iget-wide v2, p1, Lorg/apache/cordova/mediacapture/PendingRequests$Request;->limit:J

    cmp-long p2, v0, v2

    if-ltz p2, :cond_3

    .line 451
    iget-object p2, p0, Lorg/apache/cordova/mediacapture/Capture;->pendingRequests:Lorg/apache/cordova/mediacapture/PendingRequests;

    invoke-virtual {p2, p1}, Lorg/apache/cordova/mediacapture/PendingRequests;->resolveWithSuccess(Lorg/apache/cordova/mediacapture/PendingRequests$Request;)V

    goto :goto_1

    .line 454
    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/cordova/mediacapture/Capture;->captureVideo(Lorg/apache/cordova/mediacapture/PendingRequests$Request;)V

    :goto_1
    return-void
.end method

.method protected pluginInitialize()V
    .locals 5

    .line 110
    invoke-super {p0}, Lorg/apache/cordova/CordovaPlugin;->pluginInitialize()V

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lorg/apache/cordova/mediacapture/Capture;->cameraPermissionInManifest:Z

    .line 118
    :try_start_0
    iget-object v1, p0, Lorg/apache/cordova/mediacapture/Capture;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 119
    iget-object v2, p0, Lorg/apache/cordova/mediacapture/Capture;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 121
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    const-string v4, "android.permission.CAMERA"

    .line 122
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lorg/apache/cordova/mediacapture/Capture;->cameraPermissionInManifest:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Capture"

    const-string v2, "Failed checking for CAMERA permission in manifest"

    .line 131
    invoke-static {v1, v2, v0}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method
