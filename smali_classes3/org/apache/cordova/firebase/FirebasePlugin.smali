.class public Lorg/apache/cordova/firebase/FirebasePlugin;
.super Lorg/apache/cordova/CordovaPlugin;
.source "FirebasePlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/cordova/firebase/FirebasePlugin$AuthStateListener;,
        Lorg/apache/cordova/firebase/FirebasePlugin$AuthResultOnCompleteListener;,
        Lorg/apache/cordova/firebase/FirebasePlugin$AuthResultOnFailureListener;,
        Lorg/apache/cordova/firebase/FirebasePlugin$AuthResultOnSuccessListener;,
        Lorg/apache/cordova/firebase/FirebasePlugin$OnReceivePhoneAuthCredential;
    }
.end annotation


# static fields
.field private static final ANALYTICS_COLLECTION_ENABLED:Ljava/lang/String; = "firebase_analytics_collection_enabled"

.field private static final CRASHLYTICS_COLLECTION_ENABLED:Ljava/lang/String; = "firebase_crashlytics_collection_enabled"

.field protected static final GOOGLE_SIGN_IN:I = 0x1

.field protected static final JS_GLOBAL_NAMESPACE:Ljava/lang/String; = "FirebasePlugin."

.field protected static final KEY:Ljava/lang/String; = "badge"

.field private static final PERFORMANCE_COLLECTION_ENABLED:Ljava/lang/String; = "firebase_performance_collection_enabled"

.field protected static final POST_NOTIFICATIONS:Ljava/lang/String; = "POST_NOTIFICATIONS"

.field protected static final POST_NOTIFICATIONS_PERMISSION_REQUEST_ID:I = 0x1

.field protected static final SETTINGS_NAME:Ljava/lang/String; = "settings"

.field protected static final TAG:Ljava/lang/String; = "FirebasePlugin"

.field private static activityResultCallbackContext:Lorg/apache/cordova/CallbackContext; = null

.field protected static applicationContext:Landroid/content/Context; = null

.field private static authResultCallbackContext:Lorg/apache/cordova/CallbackContext; = null

.field private static cordovaActivity:Landroid/app/Activity; = null

.field private static cordovaInterface:Lorg/apache/cordova/CordovaInterface; = null

.field public static defaultChannelId:Ljava/lang/String; = null

.field public static defaultChannelName:Ljava/lang/String; = null

.field private static defaultNotificationChannel:Landroid/app/NotificationChannel; = null

.field private static inBackground:Z = true

.field protected static instance:Lorg/apache/cordova/firebase/FirebasePlugin;

.field private static notificationCallbackContext:Lorg/apache/cordova/CallbackContext;

.field private static notificationStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private static postNotificationPermissionRequestCallbackContext:Lorg/apache/cordova/CallbackContext;

.field private static tokenRefreshCallbackContext:Lorg/apache/cordova/CallbackContext;


# instance fields
.field private authCredentials:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/AuthCredential;",
            ">;"
        }
    .end annotation
.end field

.field private authProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/OAuthProvider;",
            ">;"
        }
    .end annotation
.end field

.field private authStateChangeListenerInitialized:Z

.field private authStateListener:Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;

.field private firebaseCrashlytics:Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

.field private firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

.field private firestoreListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/firestore/ListenerRegistration;",
            ">;"
        }
    .end annotation
.end field

.field private functions:Lcom/google/firebase/functions/FirebaseFunctions;

.field private gson:Lcom/google/gson/Gson;

.field private mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private multiFactorResolver:Lcom/google/firebase/auth/MultiFactorResolver;

.field private phoneAuthVerificationCallbacks:Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

.field private traces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 136
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->authStateChangeListenerInitialized:Z

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->authCredentials:Ljava/util/Map;

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->authProviders:Ljava/util/Map;

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->firestoreListeners:Ljava/util/Map;

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->multiFactorResolver:Lcom/google/firebase/auth/MultiFactorResolver;

    .line 2456
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->traces:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->getMetaDataFromManifest(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;Z)V
    .locals 0

    .line 136
    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->setPreference(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1000()Landroid/app/Activity;
    .locals 1

    .line 136
    sget-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordovaActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/cordova/firebase/FirebasePlugin;Z)I
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->conformBooleanForPluginResult(Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$1202(Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/CallbackContext;
    .locals 0

    .line 136
    sput-object p0, Lorg/apache/cordova/firebase/FirebasePlugin;->postNotificationPermissionRequestCallbackContext:Lorg/apache/cordova/CallbackContext;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/android/gms/tasks/Task;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleTaskOutcome(Lcom/google/android/gms/tasks/Task;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/Exception;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->logExceptionToCrashlytics(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1500(Lorg/apache/cordova/firebase/FirebasePlugin;)Z
    .locals 0

    .line 136
    invoke-direct {p0}, Lorg/apache/cordova/firebase/FirebasePlugin;->isCrashlyticsEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lorg/apache/cordova/firebase/FirebasePlugin;)Lcom/google/firebase/crashlytics/FirebaseCrashlytics;
    .locals 0

    .line 136
    iget-object p0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->firebaseCrashlytics:Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/android/gms/tasks/Task;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleTaskOutcomeWithBooleanResult(Lcom/google/android/gms/tasks/Task;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$1800(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 136
    invoke-static {p0}, Lorg/apache/cordova/firebase/FirebasePlugin;->defaultsToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)Z
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->userNotSignedInError(Lorg/apache/cordova/CallbackContext;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/apache/cordova/firebase/FirebasePlugin;)Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 0

    .line 136
    iget-object p0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->extractAndReturnUserInfo(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$202(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/firebase/analytics/FirebaseAnalytics;)Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 0

    .line 136
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONObject;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->isValidJsonCredential(Lorg/json/JSONObject;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONObject;)Lcom/google/firebase/auth/AuthCredential;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->obtainAuthCredential(Lorg/json/JSONObject;)Lcom/google/firebase/auth/AuthCredential;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2300(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/android/gms/tasks/Task;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleAuthTaskOutcome(Lcom/google/android/gms/tasks/Task;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$2400(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONObject;)Lcom/google/firebase/auth/OAuthProvider;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->obtainAuthProvider(Lorg/json/JSONObject;)Lcom/google/firebase/auth/OAuthProvider;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500()Lorg/apache/cordova/CallbackContext;
    .locals 1

    .line 136
    sget-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->authResultCallbackContext:Lorg/apache/cordova/CallbackContext;

    return-object v0
.end method

.method static synthetic access$2502(Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/CallbackContext;
    .locals 0

    .line 136
    sput-object p0, Lorg/apache/cordova/firebase/FirebasePlugin;->authResultCallbackContext:Lorg/apache/cordova/CallbackContext;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/apache/cordova/firebase/FirebasePlugin;)Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;
    .locals 0

    .line 136
    iget-object p0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->phoneAuthVerificationCallbacks:Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    return-object p0
.end method

.method static synthetic access$2802(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;)Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;
    .locals 0

    .line 136
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->phoneAuthVerificationCallbacks:Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    return-object p1
.end method

.method static synthetic access$2900(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/firebase/auth/AuthCredential;)Ljava/lang/String;
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->saveAuthCredential(Lcom/google/firebase/auth/AuthCredential;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lorg/apache/cordova/firebase/FirebasePlugin;)Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;
    .locals 0

    .line 136
    iget-object p0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->authStateListener:Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/apache/cordova/firebase/FirebasePlugin;)Lcom/google/firebase/auth/MultiFactorResolver;
    .locals 0

    .line 136
    iget-object p0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->multiFactorResolver:Lcom/google/firebase/auth/MultiFactorResolver;

    return-object p0
.end method

.method static synthetic access$3002(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/firebase/auth/MultiFactorResolver;)Lcom/google/firebase/auth/MultiFactorResolver;
    .locals 0

    .line 136
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->multiFactorResolver:Lcom/google/firebase/auth/MultiFactorResolver;

    return-object p1
.end method

.method static synthetic access$302(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;)Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;
    .locals 0

    .line 136
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->authStateListener:Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;

    return-object p1
.end method

.method static synthetic access$3100(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/android/gms/tasks/Task;Lorg/apache/cordova/CallbackContext;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleTaskOutcomeWithAdditionalTask(Lcom/google/android/gms/tasks/Task;Lorg/apache/cordova/CallbackContext;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method static synthetic access$3200(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/util/List;)Lorg/json/JSONArray;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->parseEnrolledSecondFactorsToJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3302(Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/CallbackContext;
    .locals 0

    .line 136
    sput-object p0, Lorg/apache/cordova/firebase/FirebasePlugin;->activityResultCallbackContext:Lorg/apache/cordova/CallbackContext;

    return-object p0
.end method

.method static synthetic access$3400()Lorg/apache/cordova/CordovaInterface;
    .locals 1

    .line 136
    sget-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordovaInterface:Lorg/apache/cordova/CordovaInterface;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/firebase/auth/OAuthProvider;)Ljava/lang/String;
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->saveAuthProvider(Lcom/google/firebase/auth/OAuthProvider;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3600(Lorg/apache/cordova/firebase/FirebasePlugin;)Ljava/util/HashMap;
    .locals 0

    .line 136
    iget-object p0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->traces:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;)Z
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->getPreference(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3800(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->jsonStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3900(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->mapFirestoreDataToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4000(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/firebase/firestore/ListenerRegistration;)Ljava/lang/String;
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->saveFirestoreListener(Lcom/google/firebase/firestore/ListenerRegistration;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4100(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONArray;Lcom/google/firebase/firestore/Query;)Lcom/google/firebase/firestore/Query;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->applyFiltersToFirestoreCollectionQuery(Lorg/json/JSONArray;Lcom/google/firebase/firestore/Query;)Lcom/google/firebase/firestore/Query;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4200(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;)Z
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->removeFirestoreListener(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4300(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->mapToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4400(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/Object;)Lorg/json/JSONArray;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->objectToJsonArray(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4500(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/android/gms/tasks/Task;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleTaskOutcomeWithStringResult(Lcom/google/android/gms/tasks/Task;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$4600(Lorg/apache/cordova/firebase/FirebasePlugin;)Z
    .locals 0

    .line 136
    iget-boolean p0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->authStateChangeListenerInitialized:Z

    return p0
.end method

.method static synthetic access$4602(Lorg/apache/cordova/firebase/FirebasePlugin;Z)Z
    .locals 0

    .line 136
    iput-boolean p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->authStateChangeListenerInitialized:Z

    return p1
.end method

.method static synthetic access$4700(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->executeGlobalJavascript(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lorg/apache/cordova/firebase/FirebasePlugin;)Lcom/google/firebase/firestore/FirebaseFirestore;
    .locals 0

    .line 136
    iget-object p0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    return-object p0
.end method

.method static synthetic access$502(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/firebase/firestore/FirebaseFirestore;)Lcom/google/firebase/firestore/FirebaseFirestore;
    .locals 0

    .line 136
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    return-object p1
.end method

.method static synthetic access$600(Lorg/apache/cordova/firebase/FirebasePlugin;)Lcom/google/firebase/functions/FirebaseFunctions;
    .locals 0

    .line 136
    iget-object p0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->functions:Lcom/google/firebase/functions/FirebaseFunctions;

    return-object p0
.end method

.method static synthetic access$602(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/firebase/functions/FirebaseFunctions;)Lcom/google/firebase/functions/FirebaseFunctions;
    .locals 0

    .line 136
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->functions:Lcom/google/firebase/functions/FirebaseFunctions;

    return-object p1
.end method

.method static synthetic access$702(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/gson/Gson;)Lcom/google/gson/Gson;
    .locals 0

    .line 136
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->gson:Lcom/google/gson/Gson;

    return-object p1
.end method

.method static synthetic access$800()Ljava/util/ArrayList;
    .locals 1

    .line 136
    sget-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->notificationStack:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$802(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 136
    sput-object p0, Lorg/apache/cordova/firebase/FirebasePlugin;->notificationStack:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->getStringResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private activateFetched(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 1004
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$20;

    invoke-direct {v1, p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$20;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private addDocumentToFirestoreCollection(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2864
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$77;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin$77;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private applyFiltersToFirestoreCollectionQuery(Lorg/json/JSONArray;Lcom/google/firebase/firestore/Query;)Lcom/google/firebase/firestore/Query;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 3252
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_b

    .line 3253
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    .line 3254
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x1

    sparse-switch v4, :sswitch_data_0

    :goto_1
    move v3, v5

    goto :goto_2

    :sswitch_0
    const-string v4, "where"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, v7

    goto :goto_2

    :sswitch_1
    const-string v4, "limit"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v8

    goto :goto_2

    :sswitch_2
    const-string v4, "endAt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v6

    goto :goto_2

    :sswitch_3
    const-string v4, "orderBy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move v3, v9

    goto :goto_2

    :sswitch_4
    const-string v4, "startAt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    move v3, v0

    :goto_2
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    .line 3256
    :pswitch_0
    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3257
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3258
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_1

    goto :goto_3

    :sswitch_5
    const-string v6, "array-contains"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    move v5, v7

    goto :goto_3

    :sswitch_6
    const-string v6, ">="

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    move v5, v8

    goto :goto_3

    :sswitch_7
    const-string v9, "<="

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    move v5, v6

    goto :goto_3

    :sswitch_8
    const-string v6, ">"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_3

    :cond_8
    move v5, v9

    goto :goto_3

    :sswitch_9
    const-string v6, "<"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_3

    :cond_9
    move v5, v0

    :goto_3
    packed-switch v5, :pswitch_data_1

    .line 3275
    invoke-direct {p0, v2, v8, v7}, Lorg/apache/cordova/firebase/FirebasePlugin;->getFilterValueAsType(Lorg/json/JSONArray;II)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v3, v2}, Lcom/google/firebase/firestore/Query;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object p2

    goto/16 :goto_4

    .line 3272
    :pswitch_1
    invoke-direct {p0, v2, v8, v7}, Lorg/apache/cordova/firebase/FirebasePlugin;->getFilterValueAsType(Lorg/json/JSONArray;II)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v3, v2}, Lcom/google/firebase/firestore/Query;->whereArrayContains(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object p2

    goto :goto_4

    .line 3269
    :pswitch_2
    invoke-direct {p0, v2, v8, v7}, Lorg/apache/cordova/firebase/FirebasePlugin;->getFilterValueAsType(Lorg/json/JSONArray;II)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v3, v2}, Lcom/google/firebase/firestore/Query;->whereGreaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object p2

    goto :goto_4

    .line 3266
    :pswitch_3
    invoke-direct {p0, v2, v8, v7}, Lorg/apache/cordova/firebase/FirebasePlugin;->getFilterValueAsType(Lorg/json/JSONArray;II)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v3, v2}, Lcom/google/firebase/firestore/Query;->whereLessThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object p2

    goto :goto_4

    .line 3263
    :pswitch_4
    invoke-direct {p0, v2, v8, v7}, Lorg/apache/cordova/firebase/FirebasePlugin;->getFilterValueAsType(Lorg/json/JSONArray;II)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v3, v2}, Lcom/google/firebase/firestore/Query;->whereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object p2

    goto :goto_4

    .line 3260
    :pswitch_5
    invoke-direct {p0, v2, v8, v7}, Lorg/apache/cordova/firebase/FirebasePlugin;->getFilterValueAsType(Lorg/json/JSONArray;II)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v3, v2}, Lcom/google/firebase/firestore/Query;->whereLessThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object p2

    goto :goto_4

    .line 3292
    :pswitch_6
    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/firebase/firestore/Query;->limit(J)Lcom/google/firebase/firestore/Query;

    move-result-object p2

    goto :goto_4

    :pswitch_7
    new-array v3, v9, [Ljava/lang/Object;

    .line 3289
    invoke-direct {p0, v2, v9, v6}, Lorg/apache/cordova/firebase/FirebasePlugin;->getFilterValueAsType(Lorg/json/JSONArray;II)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v0

    invoke-virtual {p2, v3}, Lcom/google/firebase/firestore/Query;->endAt([Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object p2

    goto :goto_4

    .line 3279
    :pswitch_8
    sget-object v3, Lcom/google/firebase/firestore/Query$Direction;->ASCENDING:Lcom/google/firebase/firestore/Query$Direction;

    .line 3280
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    const-string v6, "desc"

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3281
    sget-object v3, Lcom/google/firebase/firestore/Query$Direction;->DESCENDING:Lcom/google/firebase/firestore/Query$Direction;

    .line 3283
    :cond_a
    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v3}, Lcom/google/firebase/firestore/Query;->orderBy(Ljava/lang/String;Lcom/google/firebase/firestore/Query$Direction;)Lcom/google/firebase/firestore/Query;

    move-result-object p2

    goto :goto_4

    :pswitch_9
    new-array v3, v9, [Ljava/lang/Object;

    .line 3286
    invoke-direct {p0, v2, v9, v6}, Lorg/apache/cordova/firebase/FirebasePlugin;->getFilterValueAsType(Lorg/json/JSONArray;II)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v0

    invoke-virtual {p2, v3}, Lcom/google/firebase/firestore/Query;->startAt([Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object p2

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_b
    return-object p2

    :sswitch_data_0
    .sparse-switch
        -0x7114c3cb -> :sswitch_4
        -0x47f30bbb -> :sswitch_3
        0x5c2c66e -> :sswitch_2
        0x6234bbb -> :sswitch_1
        0x6bdbce7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x3c -> :sswitch_9
        0x3e -> :sswitch_8
        0x781 -> :sswitch_7
        0x7bf -> :sswitch_6
        0x8111b13 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static channelExists(Ljava/lang/String;)Z
    .locals 3

    .line 2847
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 2848
    invoke-static {}, Lorg/apache/cordova/firebase/FirebasePlugin;->listChannels()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2850
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannel;

    .line 2851
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private conformBooleanForPluginResult(Z)I
    .locals 0

    return p1
.end method

.method private createBundleFromJSONObject(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 776
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 777
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 778
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 779
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 780
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 781
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 782
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 783
    :cond_0
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_1

    .line 784
    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 785
    :cond_1
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_2

    .line 786
    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 787
    :cond_2
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_3

    .line 788
    check-cast v3, Lorg/json/JSONObject;

    invoke-direct {p0, v3}, Lorg/apache/cordova/firebase/FirebasePlugin;->createBundleFromJSONObject(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v3

    .line 789
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 790
    :cond_3
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_6

    .line 791
    check-cast v3, Lorg/json/JSONArray;

    .line 792
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    .line 793
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 794
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 795
    instance-of v6, v6, Lorg/json/JSONObject;

    if-eqz v6, :cond_4

    .line 796
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/apache/cordova/firebase/FirebasePlugin;->createBundleFromJSONObject(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v6

    .line 797
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 800
    :cond_5
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 802
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    return-object v0
.end method

.method protected static createChannel(Lorg/json/JSONObject;)Landroid/app/NotificationChannel;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2653
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-lt v0, v1, :cond_8

    const-string v0, "id"

    .line 2654
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2655
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Creating channel id="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FirebasePlugin"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    invoke-static {v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->channelExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2658
    invoke-static {v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->deleteChannel(Ljava/lang/String;)V

    .line 2661
    :cond_0
    sget-object v1, Lorg/apache/cordova/firebase/FirebasePlugin;->applicationContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 2662
    sget-object v4, Lorg/apache/cordova/firebase/FirebasePlugin;->cordovaActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    const-string v6, ""

    .line 2664
    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2665
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Channel "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " - name="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "importance"

    const/4 v9, 0x4

    .line 2667
    invoke-virtual {p0, v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 2668
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - importance="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    new-instance v10, Landroid/app/NotificationChannel;

    invoke-direct {v10, v0, v5, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v5, "description"

    .line 2675
    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2676
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - description="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2677
    invoke-virtual {v10, v5}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const-string v5, "light"

    const/4 v6, 0x1

    .line 2680
    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 2681
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " - light="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    invoke-virtual {v10, v5}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const-string v5, "lightColor"

    const/4 v7, -0x1

    .line 2684
    invoke-virtual {p0, v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v7, :cond_1

    .line 2686
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " - lightColor="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    invoke-virtual {v10, v5}, Landroid/app/NotificationChannel;->setLightColor(I)V

    :cond_1
    const-string v5, "visibility"

    .line 2691
    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 2692
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " - visibility="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2693
    invoke-virtual {v10, v5}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    const-string v5, "badge"

    .line 2696
    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 2697
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " - badge="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2698
    invoke-virtual {v10, v5}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    const-string v5, "usage"

    const/4 v11, 0x6

    .line 2700
    invoke-virtual {p0, v5, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 2701
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " - usage="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "streamType"

    .line 2703
    invoke-virtual {p0, v11, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 2704
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " - streamType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "sound"

    const-string v13, "default"

    .line 2707
    invoke-virtual {p0, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2708
    new-instance v14, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v14}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 2709
    invoke-virtual {v14, v9}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v9

    .line 2710
    invoke-virtual {v9, v5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    if-eq v11, v7, :cond_2

    .line 2713
    invoke-virtual {v5, v11}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 2716
    :cond_2
    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v5

    const-string v7, "ringtone"

    .line 2717
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2718
    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v10, v2, v5}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 2719
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " - sound=ringtone"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    const-string v7, "false"

    .line 2720
    invoke-virtual {v12, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 2721
    invoke-virtual {v12, v13}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2722
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "android.resource://"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/raw/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2723
    invoke-virtual {v10, v2, v5}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 2724
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " - sound="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    .line 2726
    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v10, v2, v5}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 2727
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " - sound=default"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2730
    :cond_5
    invoke-virtual {v10, v2, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 2731
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " - sound=none"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v2, "vibration"

    .line 2735
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, " - vibrate="

    if-eqz v4, :cond_7

    .line 2737
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result p0

    .line 2738
    new-array v2, p0, [J

    const/4 v7, 0x0

    :goto_1
    if-ge v7, p0, :cond_6

    .line 2740
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v11

    aput-wide v11, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2742
    :cond_6
    invoke-virtual {v10, v6}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 2743
    invoke-virtual {v10, v2}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 2744
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2746
    :cond_7
    invoke-virtual {p0, v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 2747
    invoke-virtual {v10, p0}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 2748
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    :goto_2
    invoke-virtual {v1, v10}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    move-object v2, v10

    :cond_8
    return-object v2
.end method

.method protected static createDefaultChannel()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2758
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    .line 2759
    sget-object v2, Lorg/apache/cordova/firebase/FirebasePlugin;->defaultChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "name"

    .line 2760
    sget-object v2, Lorg/apache/cordova/firebase/FirebasePlugin;->defaultChannelName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2761
    invoke-static {v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->createDefaultChannel(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected static createDefaultChannel(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2765
    invoke-static {p0}, Lorg/apache/cordova/firebase/FirebasePlugin;->createChannel(Lorg/json/JSONObject;)Landroid/app/NotificationChannel;

    move-result-object p0

    sput-object p0, Lorg/apache/cordova/firebase/FirebasePlugin;->defaultNotificationChannel:Landroid/app/NotificationChannel;

    return-void
.end method

.method private static defaultsToMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1146
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1147
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1148
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1150
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 1152
    new-instance v4, Ljava/lang/Long;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v5, v3

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    :cond_0
    move-object v3, v4

    goto :goto_2

    .line 1153
    :cond_1
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_3

    .line 1154
    check-cast v3, Lorg/json/JSONArray;

    .line 1155
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v4, v5, :cond_2

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1157
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    goto :goto_2

    .line 1160
    :cond_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [B

    .line 1161
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v6, v5, :cond_0

    .line 1162
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1167
    :cond_3
    :goto_2
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method protected static deleteChannel(Ljava/lang/String;)V
    .locals 2

    .line 2807
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 2808
    sget-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->applicationContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2809
    invoke-virtual {v0, p0}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private deleteDocumentFromFirestoreCollection(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2972
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$80;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin$80;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private deleteInstallationId(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 3431
    iget-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lorg/apache/cordova/firebase/FirebasePlugin$88;

    invoke-direct {v0, p0, p2}, Lorg/apache/cordova/firebase/FirebasePlugin$88;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private didCrashOnPreviousExecution(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 1128
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$28;

    invoke-direct {v1, p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$28;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private documentExistsInFirestoreCollection(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 3000
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$81;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin$81;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private escapeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\""

    const-string v1, "\\\""

    .line 3542
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "%22"

    const-string v1, "\\%22"

    .line 3543
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private executeGlobalJavascript(Ljava/lang/String;)V
    .locals 2

    .line 3548
    sget-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordovaActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 3549
    :cond_0
    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$91;

    invoke-direct {v1, p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$91;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private extractAndReturnUserInfo(Lorg/apache/cordova/CallbackContext;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1249
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    .line 1250
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "name"

    .line 1251
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1252
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getEmail()Ljava/lang/String;

    move-result-object v2

    const-string v3, "email"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "emailIsVerified"

    .line 1253
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->isEmailVerified()Z

    move-result v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1254
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    const-string v4, "phoneNumber"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1255
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getPhotoUrl()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getPhotoUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v5, "photoUrl"

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1256
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v2

    const-string v6, "uid"

    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "isAnonymous"

    .line 1257
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->isAnonymous()Z

    move-result v7

    invoke-virtual {v1, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1259
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getMetadata()Lcom/google/firebase/auth/FirebaseUserMetadata;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v7, "creationTimestamp"

    .line 1261
    invoke-interface {v2}, Lcom/google/firebase/auth/FirebaseUserMetadata;->getCreationTimestamp()J

    move-result-wide v8

    invoke-virtual {v1, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v7, "lastSignInTimestamp"

    .line 1262
    invoke-interface {v2}, Lcom/google/firebase/auth/FirebaseUserMetadata;->getLastSignInTimestamp()J

    move-result-wide v8

    invoke-virtual {v1, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1265
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getProviderData()Ljava/util/List;

    move-result-object v2

    .line 1266
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 1267
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/firebase/auth/UserInfo;

    .line 1268
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "providerId"

    .line 1269
    invoke-interface {v8}, Lcom/google/firebase/auth/UserInfo;->getProviderId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1270
    invoke-interface {v8}, Lcom/google/firebase/auth/UserInfo;->getUid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "displayName"

    .line 1271
    invoke-interface {v8}, Lcom/google/firebase/auth/UserInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1272
    invoke-interface {v8}, Lcom/google/firebase/auth/UserInfo;->getEmail()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1273
    invoke-interface {v8}, Lcom/google/firebase/auth/UserInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1274
    invoke-interface {v8}, Lcom/google/firebase/auth/UserInfo;->getPhotoUrl()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v9, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1275
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_2
    const-string v2, "providers"

    .line 1277
    invoke-virtual {v1, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v2, 0x1

    .line 1279
    invoke-virtual {v0, v2}, Lcom/google/firebase/auth/FirebaseUser;->getIdToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v2, Lorg/apache/cordova/firebase/FirebasePlugin$34;

    invoke-direct {v2, p0, v1, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$34;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v2, Lorg/apache/cordova/firebase/FirebasePlugin$33;

    invoke-direct {v2, p0, p1, v1}, Lorg/apache/cordova/firebase/FirebasePlugin$33;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;)V

    .line 1292
    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private fetch(Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    .line 984
    invoke-static {}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getInstance()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->fetch()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->fetch(Lorg/apache/cordova/CallbackContext;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method private fetch(Lorg/apache/cordova/CallbackContext;J)V
    .locals 1

    .line 988
    invoke-static {}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getInstance()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->fetch(J)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->fetch(Lorg/apache/cordova/CallbackContext;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method private fetch(Lorg/apache/cordova/CallbackContext;Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/cordova/CallbackContext;",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 992
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$19;

    invoke-direct {v1, p0, p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$19;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/android/gms/tasks/Task;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private fetchAndActivate(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 1016
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$21;

    invoke-direct {v1, p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$21;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private fetchDocumentInFirestoreCollection(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 3040
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$82;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin$82;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private fetchFirestoreCollection(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 3134
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$84;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin$84;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private functionsHttpsCallable(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 3368
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$87;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin$87;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private generateId()Ljava/lang/String;
    .locals 2

    .line 3570
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x3e9

    .line 3571
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAll(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 1074
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$25;

    invoke-direct {v1, p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$25;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getFilterValueAsType(Lorg/json/JSONArray;II)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 3302
    invoke-virtual {p1, p3}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3303
    invoke-virtual {p1, p3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, "string"

    .line 3306
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "integer"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "boolean"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "long"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "double"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 3320
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 3311
    :pswitch_0
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 3308
    :pswitch_1
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 3317
    :pswitch_2
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_2

    .line 3314
    :pswitch_3
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    :goto_2
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_3
        0x32c67c -> :sswitch_2
        0x3db6c28 -> :sswitch_1
        0x74b5813e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getInfo(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 1053
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$24;

    invoke-direct {v1, p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$24;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getInstallationId(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 3443
    iget-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lorg/apache/cordova/firebase/FirebasePlugin$89;

    invoke-direct {v0, p0, p2}, Lorg/apache/cordova/firebase/FirebasePlugin$89;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getInstallationToken(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 3455
    iget-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lorg/apache/cordova/firebase/FirebasePlugin$90;

    invoke-direct {v0, p0, p2}, Lorg/apache/cordova/firebase/FirebasePlugin$90;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getMetaDataFromManifest(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3575
    sget-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lorg/apache/cordova/firebase/FirebasePlugin;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private getPreference(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 3588
    :try_start_0
    sget-object v1, Lorg/apache/cordova/firebase/FirebasePlugin;->cordovaActivity:Landroid/app/Activity;

    const-string v2, "settings"

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3589
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3592
    :catch_0
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->getMetaDataFromManifest(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return v0
.end method

.method private getStringResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 520
    sget-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->applicationContext:Landroid/content/Context;

    .line 521
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lorg/apache/cordova/firebase/FirebasePlugin;->applicationContext:Landroid/content/Context;

    .line 522
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "string"

    .line 521
    invoke-virtual {v1, p1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 520
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getToken(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    .line 639
    iget-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lorg/apache/cordova/firebase/FirebasePlugin$3;

    invoke-direct {v0, p0, p2}, Lorg/apache/cordova/firebase/FirebasePlugin$3;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getValue(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V
    .locals 2

    .line 1040
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$23;

    invoke-direct {v1, p0, p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$23;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private grantPermission(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 689
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$5;

    invoke-direct {v1, p0, p1, p0}, Lorg/apache/cordova/firebase/FirebasePlugin$5;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;Lorg/apache/cordova/CordovaPlugin;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleAuthTaskOutcome(Lcom/google/android/gms/tasks/Task;Lorg/apache/cordova/CallbackContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;",
            "Lorg/apache/cordova/CallbackContext;",
            ")V"
        }
    .end annotation

    .line 3694
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3697
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lcom/google/firebase/auth/FirebaseAuthInvalidCredentialsException;

    if-eqz v0, :cond_1

    const-string p1, "Invalid verification code"

    .line 3698
    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 3699
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lcom/google/firebase/auth/FirebaseAuthMultiFactorException;

    if-eqz v0, :cond_2

    .line 3701
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/FirebaseAuthMultiFactorException;

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuthMultiFactorException;->getResolver()Lcom/google/firebase/auth/MultiFactorResolver;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->multiFactorResolver:Lcom/google/firebase/auth/MultiFactorResolver;

    const-string v0, "Second factor required"

    .line 3703
    invoke-virtual {p1}, Lcom/google/firebase/auth/MultiFactorResolver;->getHints()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->parseEnrolledSecondFactorsToJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    .line 3707
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "errorMessage"

    .line 3708
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "secondFactors"

    .line 3709
    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3710
    invoke-virtual {p2, v1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 3712
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 3695
    :cond_3
    :goto_0
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3716
    invoke-static {p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_1
    return-void
.end method

.method protected static handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 3483
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirebasePlugin"

    .line 3484
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3485
    sget-object v1, Lorg/apache/cordova/firebase/FirebasePlugin;->instance:Lorg/apache/cordova/firebase/FirebasePlugin;

    if-eqz v1, :cond_0

    .line 3486
    invoke-direct {v1, p0}, Lorg/apache/cordova/firebase/FirebasePlugin;->logExceptionToCrashlytics(Ljava/lang/Exception;)V

    .line 3488
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

.method protected static handleExceptionWithoutContext(Ljava/lang/Exception;)V
    .locals 2

    .line 3492
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirebasePlugin"

    .line 3493
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3494
    sget-object v1, Lorg/apache/cordova/firebase/FirebasePlugin;->instance:Lorg/apache/cordova/firebase/FirebasePlugin;

    if-eqz v1, :cond_0

    .line 3495
    invoke-direct {v1, p0}, Lorg/apache/cordova/firebase/FirebasePlugin;->logExceptionToCrashlytics(Ljava/lang/Exception;)V

    .line 3496
    sget-object p0, Lorg/apache/cordova/firebase/FirebasePlugin;->instance:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-virtual {p0, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->logErrorToWebview(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private handleTaskOutcome(Lcom/google/android/gms/tasks/Task;Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    .line 3602
    :try_start_0
    new-instance v0, Lorg/apache/cordova/firebase/FirebasePlugin$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lorg/apache/cordova/firebase/FirebasePlugin$$ExternalSyntheticLambda0;-><init>(Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3616
    invoke-static {p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method

.method private handleTaskOutcomeWithAdditionalTask(Lcom/google/android/gms/tasks/Task;Lorg/apache/cordova/CallbackContext;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1

    .line 3623
    :try_start_0
    new-instance v0, Lorg/apache/cordova/firebase/FirebasePlugin$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p3}, Lorg/apache/cordova/firebase/FirebasePlugin$$ExternalSyntheticLambda1;-><init>(Lorg/apache/cordova/CallbackContext;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3642
    invoke-static {p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method

.method private handleTaskOutcomeWithBooleanResult(Lcom/google/android/gms/tasks/Task;Lorg/apache/cordova/CallbackContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lorg/apache/cordova/CallbackContext;",
            ")V"
        }
    .end annotation

    .line 3648
    :try_start_0
    new-instance v0, Lorg/apache/cordova/firebase/FirebasePlugin$92;

    invoke-direct {v0, p0, p2}, Lorg/apache/cordova/firebase/FirebasePlugin$92;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3665
    invoke-static {p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method

.method private handleTaskOutcomeWithStringResult(Lcom/google/android/gms/tasks/Task;Lorg/apache/cordova/CallbackContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/cordova/CallbackContext;",
            ")V"
        }
    .end annotation

    .line 3671
    :try_start_0
    new-instance v0, Lorg/apache/cordova/firebase/FirebasePlugin$93;

    invoke-direct {v0, p0, p2}, Lorg/apache/cordova/firebase/FirebasePlugin$93;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3688
    invoke-static {p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method

.method public static hasNotificationsCallback()Z
    .locals 1

    .line 618
    sget-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->notificationCallbackContext:Lorg/apache/cordova/CallbackContext;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasPermission(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 668
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$4;

    invoke-direct {v1, p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$4;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static inBackground()Z
    .locals 1

    .line 614
    sget-boolean v0, Lorg/apache/cordova/firebase/FirebasePlugin;->inBackground:Z

    return v0
.end method

.method private incrementCounter(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 2486
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v7, Lorg/apache/cordova/firebase/FirebasePlugin$64;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/cordova/firebase/FirebasePlugin$64;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private isAnalyticsCollectionEnabled(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 2551
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$67;

    invoke-direct {v1, p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$67;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private isAutoInitEnabled(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 746
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$9;

    invoke-direct {v1, p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$9;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private isCrashlyticsCollectionEnabled(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 2607
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$71;

    invoke-direct {v1, p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$71;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private isCrashlyticsEnabled()Z
    .locals 1

    const-string v0, "firebase_crashlytics_collection_enabled"

    .line 2620
    invoke-direct {p0, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->getPreference(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isPerformanceCollectionEnabled(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 2579
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$69;

    invoke-direct {v1, p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$69;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private isUserSignedIn()Z
    .locals 1

    .line 3931
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isValidJsonCredential(Lorg/json/JSONObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "id"

    .line 1551
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "verificationId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

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

.method private jsonStringToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 3793
    new-instance v0, Lorg/apache/cordova/firebase/FirebasePlugin$94;

    invoke-direct {v0, p0}, Lorg/apache/cordova/firebase/FirebasePlugin$94;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;)V

    invoke-virtual {v0}, Lorg/apache/cordova/firebase/FirebasePlugin$94;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 3794
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method static synthetic lambda$handleTaskOutcome$0(Lorg/apache/cordova/CallbackContext;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 3604
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3606
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3607
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "Task failed for unknown reason"

    .line 3609
    invoke-virtual {p0, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 3605
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/apache/cordova/CallbackContext;->success()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3612
    invoke-static {p1, p0}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_1
    return-void
.end method

.method static synthetic lambda$handleTaskOutcomeWithAdditionalTask$1(Lorg/apache/cordova/CallbackContext;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 3625
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3628
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3629
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 3630
    invoke-virtual {p0, p2}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 3631
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p2, "Task failed for unknown reason"

    .line 3634
    invoke-virtual {p0, p2}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 3635
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_1

    .line 3626
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/apache/cordova/CallbackContext;->success()V

    const-string p2, "success"

    .line 3627
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3638
    invoke-static {p1, p0}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_1
    return-void
.end method

.method public static listChannels()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 2838
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 2839
    sget-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->applicationContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2840
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationChannels()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private listenToDocumentInFirestoreCollection(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 3085
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$83;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin$83;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private listenToFirestoreCollection(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 3172
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$85;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin$85;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private logError(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 825
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 827
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lorg/apache/cordova/firebase/FirebasePlugin$12;

    invoke-direct {v2, p0, p2, v0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$12;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONArray;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private logEvent(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 810
    invoke-direct {p0, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->createBundleFromJSONObject(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object p3

    .line 812
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$11;

    invoke-direct {v1, p0, p2, p3, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$11;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;Landroid/os/Bundle;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private logExceptionToCrashlytics(Ljava/lang/Exception;)V
    .locals 2

    .line 3843
    invoke-direct {p0}, Lorg/apache/cordova/firebase/FirebasePlugin;->isCrashlyticsEnabled()Z

    move-result v0

    const-string v1, "FirebasePlugin"

    if-eqz v0, :cond_0

    .line 3845
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->firebaseCrashlytics:Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3847
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Cannot log exception - Crashlytics collection is disabled"

    .line 3850
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private logMessage(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    .line 903
    invoke-direct {p0}, Lorg/apache/cordova/firebase/FirebasePlugin;->isCrashlyticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 904
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p1

    .line 905
    invoke-direct {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->logMessageToCrashlytics(Ljava/lang/String;)V

    .line 906
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_0

    :cond_0
    const-string p1, "Cannot log message - Crashlytics collection is disabled"

    .line 908
    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private logMessageToCrashlytics(Ljava/lang/String;)V
    .locals 2

    .line 3831
    invoke-direct {p0}, Lorg/apache/cordova/firebase/FirebasePlugin;->isCrashlyticsEnabled()Z

    move-result v0

    const-string v1, "FirebasePlugin"

    if-eqz v0, :cond_0

    .line 3833
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->firebaseCrashlytics:Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3835
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Cannot log message - Crashlytics collection is disabled"

    .line 3838
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private mapFirestoreDataToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 3798
    invoke-direct {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->sanitiseFirestoreHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 3799
    invoke-direct {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->mapToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method private mapToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 3816
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3817
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private objectToJsonArray(Ljava/lang/Object;)Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 3826
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3827
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private objectToJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 3821
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3822
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private obtainAuthCredential(Lorg/json/JSONObject;)Lcom/google/firebase/auth/AuthCredential;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "verificationId"

    .line 3722
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "FirebasePlugin"

    if-eqz v1, :cond_0

    const-string v1, "code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Using specified verificationId and code to authenticate"

    .line 3723
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3724
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/firebase/auth/PhoneAuthProvider;->getCredential(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/PhoneAuthCredential;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "id"

    .line 3725
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/apache/cordova/firebase/FirebasePlugin;->instance:Lorg/apache/cordova/firebase/FirebasePlugin;

    iget-object v1, v1, Lorg/apache/cordova/firebase/FirebasePlugin;->authCredentials:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Using native auth credential to authenticate"

    .line 3726
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3727
    sget-object v1, Lorg/apache/cordova/firebase/FirebasePlugin;->instance:Lorg/apache/cordova/firebase/FirebasePlugin;

    iget-object v1, v1, Lorg/apache/cordova/firebase/FirebasePlugin;->authCredentials:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/auth/AuthCredential;

    .line 3728
    sget-object v2, Lorg/apache/cordova/firebase/FirebasePlugin;->instance:Lorg/apache/cordova/firebase/FirebasePlugin;

    iget-object v2, v2, Lorg/apache/cordova/firebase/FirebasePlugin;->authCredentials:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private obtainAuthProvider(Lorg/json/JSONObject;)Lcom/google/firebase/auth/OAuthProvider;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "id"

    .line 3735
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/cordova/firebase/FirebasePlugin;->instance:Lorg/apache/cordova/firebase/FirebasePlugin;

    iget-object v1, v1, Lorg/apache/cordova/firebase/FirebasePlugin;->authProviders:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "FirebasePlugin"

    const-string v2, "Using native auth provider to authenticate"

    .line 3736
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3737
    sget-object v1, Lorg/apache/cordova/firebase/FirebasePlugin;->instance:Lorg/apache/cordova/firebase/FirebasePlugin;

    iget-object v1, v1, Lorg/apache/cordova/firebase/FirebasePlugin;->authProviders:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/OAuthProvider;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private onMessageReceived(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 528
    sput-object p1, Lorg/apache/cordova/firebase/FirebasePlugin;->notificationCallbackContext:Lorg/apache/cordova/CallbackContext;

    .line 529
    sget-object p1, Lorg/apache/cordova/firebase/FirebasePlugin;->notificationStack:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 530
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 531
    sget-object v1, Lorg/apache/cordova/firebase/FirebasePlugin;->applicationContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->sendMessage(Landroid/os/Bundle;Landroid/content/Context;)V

    goto :goto_0

    .line 533
    :cond_0
    sget-object p1, Lorg/apache/cordova/firebase/FirebasePlugin;->notificationStack:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method private onTokenRefresh(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 538
    sput-object p1, Lorg/apache/cordova/firebase/FirebasePlugin;->tokenRefreshCallbackContext:Lorg/apache/cordova/CallbackContext;

    .line 540
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$2;

    invoke-direct {v1, p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$2;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private parseEnrolledSecondFactorsToJson(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/MultiFactorInfo;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2080
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 2081
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2082
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "index"

    .line 2083
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2085
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    const-string v4, "phoneNumber"

    .line 2086
    invoke-virtual {v3}, Lcom/google/firebase/auth/PhoneMultiFactorInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2088
    invoke-virtual {v3}, Lcom/google/firebase/auth/PhoneMultiFactorInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "displayName"

    .line 2090
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2092
    :cond_0
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private removeFirestoreListener(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 3328
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$86;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin$86;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeFirestoreListener(Ljava/lang/String;)Z
    .locals 1

    .line 3353
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->firestoreListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3354
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->firestoreListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/ListenerRegistration;

    if-eqz v0, :cond_0

    .line 3356
    invoke-interface {v0}, Lcom/google/firebase/firestore/ListenerRegistration;->remove()V

    .line 3358
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->firestoreListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private resetRemoteConfig(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 1028
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$22;

    invoke-direct {v1, p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$22;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sanitiseFirestoreHashMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3803
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 3804
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3805
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3806
    instance-of v3, v2, Lcom/google/firebase/firestore/DocumentReference;

    if-eqz v3, :cond_1

    .line 3807
    check-cast v2, Lcom/google/firebase/firestore/DocumentReference;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/DocumentReference;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3808
    :cond_1
    instance-of v3, v2, Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 3809
    check-cast v2, Ljava/util/Map;

    invoke-direct {p0, v2}, Lorg/apache/cordova/firebase/FirebasePlugin;->sanitiseFirestoreHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private saveAuthCredential(Lcom/google/firebase/auth/AuthCredential;)Ljava/lang/String;
    .locals 2

    .line 3558
    invoke-direct {p0}, Lorg/apache/cordova/firebase/FirebasePlugin;->generateId()Ljava/lang/String;

    move-result-object v0

    .line 3559
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->authCredentials:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private saveAuthProvider(Lcom/google/firebase/auth/OAuthProvider;)Ljava/lang/String;
    .locals 2

    .line 3564
    invoke-direct {p0}, Lorg/apache/cordova/firebase/FirebasePlugin;->generateId()Ljava/lang/String;

    move-result-object v0

    .line 3565
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->authProviders:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private saveFirestoreListener(Lcom/google/firebase/firestore/ListenerRegistration;)Ljava/lang/String;
    .locals 2

    .line 3346
    invoke-direct {p0}, Lorg/apache/cordova/firebase/FirebasePlugin;->generateId()Ljava/lang/String;

    move-result-object v0

    .line 3347
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->firestoreListeners:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private sendCrash(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 915
    sget-object p1, Lorg/apache/cordova/firebase/FirebasePlugin;->cordovaActivity:Landroid/app/Activity;

    new-instance p2, Lorg/apache/cordova/firebase/FirebasePlugin$14;

    invoke-direct {p2, p0}, Lorg/apache/cordova/firebase/FirebasePlugin$14;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static sendMessage(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 4

    .line 570
    invoke-static {}, Lorg/apache/cordova/firebase/FirebasePlugin;->hasNotificationsCallback()Z

    move-result v0

    if-nez v0, :cond_1

    .line 571
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 572
    sget-object p1, Lorg/apache/cordova/firebase/FirebasePlugin;->notificationStack:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    .line 573
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sput-object p1, Lorg/apache/cordova/firebase/FirebasePlugin;->notificationStack:Ljava/util/ArrayList;

    .line 575
    :cond_0
    sget-object p1, Lorg/apache/cordova/firebase/FirebasePlugin;->notificationStack:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 580
    :cond_1
    sget-object p1, Lorg/apache/cordova/firebase/FirebasePlugin;->notificationCallbackContext:Lorg/apache/cordova/CallbackContext;

    if-eqz p0, :cond_4

    .line 583
    invoke-static {p0}, Lorg/apache/cordova/firebase/FirebasePluginMessageReceiverManager;->sendMessage(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "FirebasePlugin"

    const-string p1, "Message bundle was handled by a registered receiver"

    .line 585
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_4

    .line 587
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 588
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 589
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 591
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 593
    invoke-static {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    return-void

    .line 597
    :cond_3
    sget-object p0, Lorg/apache/cordova/firebase/FirebasePlugin;->instance:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-virtual {p0, v0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->sendPluginResultAndKeepCallback(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static sendToken(Ljava/lang/String;)V
    .locals 2

    .line 603
    sget-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->tokenRefreshCallbackContext:Lorg/apache/cordova/CallbackContext;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    .line 609
    sget-object v1, Lorg/apache/cordova/firebase/FirebasePlugin;->instance:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-virtual {v1, p0, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->sendPluginResultAndKeepCallback(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    :cond_1
    return-void
.end method

.method private setAnalyticsCollectionEnabled(Lorg/apache/cordova/CallbackContext;Z)V
    .locals 2

    .line 2536
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$66;

    invoke-direct {v1, p0, p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$66;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;ZLorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setAutoInitEnabled(Lorg/apache/cordova/CallbackContext;Z)V
    .locals 2

    .line 761
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$10;

    invoke-direct {v1, p0, p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$10;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;ZLorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setConfigSettings(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1094
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$26;

    invoke-direct {v1, p0, p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$26;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setCrashlyticsCollectionEnabled(Lorg/apache/cordova/CallbackContext;Z)V
    .locals 2

    .line 2592
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$70;

    invoke-direct {v1, p0, p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$70;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;ZLorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setCrashlyticsCustomKey(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 2

    .line 866
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$13;

    invoke-direct {v1, p0, p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$13;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setCrashlyticsUserId(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V
    .locals 2

    .line 925
    sget-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordovaActivity:Landroid/app/Activity;

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$15;

    invoke-direct {v1, p0, p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$15;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setDefaults(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;)V
    .locals 2

    .line 1116
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$27;

    invoke-direct {v1, p0, p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$27;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setDocumentInFirestoreCollection(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2900
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$78;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin$78;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setPerformanceCollectionEnabled(Lorg/apache/cordova/CallbackContext;Z)V
    .locals 2

    .line 2564
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$68;

    invoke-direct {v1, p0, p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$68;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;ZLorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setPreference(Ljava/lang/String;Z)V
    .locals 3

    .line 3579
    sget-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordovaActivity:Landroid/app/Activity;

    const-string v1, "settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3580
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3581
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3582
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setScreenName(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V
    .locals 2

    .line 943
    sget-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordovaActivity:Landroid/app/Activity;

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$16;

    invoke-direct {v1, p0, p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$16;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setUserId(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V
    .locals 2

    .line 958
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$17;

    invoke-direct {v1, p0, p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$17;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setUserProperty(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 971
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$18;

    invoke-direct {v1, p0, p2, p3, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$18;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startTrace(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V
    .locals 2

    .line 2460
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$63;

    invoke-direct {v1, p0, p0, p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$63;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private stopTrace(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V
    .locals 2

    .line 2511
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$65;

    invoke-direct {v1, p0, p0, p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$65;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private subscribe(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V
    .locals 2

    .line 710
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$6;

    invoke-direct {v1, p0, p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$6;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private unregister(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 734
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$8;

    invoke-direct {v1, p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$8;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private unsubscribe(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V
    .locals 2

    .line 722
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$7;

    invoke-direct {v1, p0, p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$7;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateDocumentInFirestoreCollection(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2936
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$79;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin$79;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private userNotSignedInError(Lorg/apache/cordova/CallbackContext;)Z
    .locals 2

    .line 3936
    invoke-direct {p0}, Lorg/apache/cordova/firebase/FirebasePlugin;->isUserSignedIn()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "No user is currently signed"

    .line 3938
    invoke-virtual {p1, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :cond_0
    return v0
.end method


# virtual methods
.method public authenticateUserWithApple(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 2

    .line 2260
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$55;

    invoke-direct {v1, p0, p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$55;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public authenticateUserWithEmailAndPassword(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 2

    .line 2206
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$53;

    invoke-direct {v1, p0, p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$53;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public authenticateUserWithFacebook(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 2

    .line 2319
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$57;

    invoke-direct {v1, p0, p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$57;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public authenticateUserWithGoogle(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 2

    .line 2238
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$54;

    invoke-direct {v1, p0, p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$54;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public authenticateUserWithMicrosoft(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 2

    .line 2289
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$56;

    invoke-direct {v1, p0, p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$56;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearAllNotifications(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 2624
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$72;

    invoke-direct {v1, p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$72;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public createChannel(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;)V
    .locals 2

    .line 2638
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$73;

    invoke-direct {v1, p0, p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$73;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public createUserWithEmailAndPassword(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 2

    .line 2156
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$51;

    invoke-direct {v1, p0, p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$51;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteChannel(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V
    .locals 2

    .line 2793
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$75;

    invoke-direct {v1, p0, p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$75;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteUser(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 1

    .line 1429
    iget-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p2}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lorg/apache/cordova/firebase/FirebasePlugin$41;

    invoke-direct {v0, p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$41;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public enrollSecondAuthFactor(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 2

    .line 1681
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$46;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin$46;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "Invalid action: "

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "getId"

    .line 248
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 249
    invoke-direct {p0, p2, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->getInstallationId(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_1

    :cond_0
    const-string v2, "getToken"

    .line 250
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    invoke-direct {p0, p2, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->getToken(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_1

    :cond_1
    const-string v2, "hasPermission"

    .line 252
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 253
    invoke-direct {p0, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->hasPermission(Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_1

    :cond_2
    const-string v2, "grantPermission"

    .line 254
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 255
    invoke-direct {p0, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->grantPermission(Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_1

    :cond_3
    const-string v2, "subscribe"

    .line 256
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 257
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->subscribe(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const-string v2, "unsubscribe"

    .line 258
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 259
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->unsubscribe(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const-string v2, "isAutoInitEnabled"

    .line 260
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 261
    invoke-direct {p0, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->isAutoInitEnabled(Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_1

    :cond_6
    const-string v2, "setAutoInitEnabled"

    .line 262
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 263
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result p1

    invoke-direct {p0, p3, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->setAutoInitEnabled(Lorg/apache/cordova/CallbackContext;Z)V

    goto/16 :goto_1

    :cond_7
    const-string v2, "unregister"

    .line 264
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 265
    invoke-direct {p0, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->unregister(Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_1

    :cond_8
    const-string v2, "onMessageReceived"

    .line 266
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 267
    invoke-direct {p0, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->onMessageReceived(Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_1

    :cond_9
    const-string v2, "onTokenRefresh"

    .line 268
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 269
    invoke-direct {p0, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->onTokenRefresh(Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_1

    :cond_a
    const-string v2, "logEvent"

    .line 270
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 271
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p0, p3, p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->logEvent(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    :cond_b
    const-string v2, "logError"

    .line 272
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 273
    invoke-direct {p0, p3, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->logError(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    goto/16 :goto_1

    :cond_c
    const-string v2, "setCrashlyticsUserId"

    .line 274
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 275
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->setCrashlyticsUserId(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    const-string v2, "setScreenName"

    .line 276
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 277
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->setScreenName(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    const-string v2, "setUserId"

    .line 278
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 279
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->setUserId(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    const-string v2, "setUserProperty"

    .line 280
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 281
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3, p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->setUserProperty(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    const-string v2, "activateFetched"

    .line 282
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 283
    invoke-direct {p0, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->activateFetched(Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_1

    :cond_11
    const-string v2, "fetchAndActivate"

    .line 284
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 285
    invoke-direct {p0, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->fetchAndActivate(Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_1

    :cond_12
    const-string v2, "fetch"

    .line 286
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 287
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_13

    .line 288
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide p1

    invoke-direct {p0, p3, p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->fetch(Lorg/apache/cordova/CallbackContext;J)V

    goto/16 :goto_1

    .line 290
    :cond_13
    invoke-direct {p0, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->fetch(Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_1

    :cond_14
    const-string v2, "resetRemoteConfig"

    .line 292
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 293
    invoke-direct {p0, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->resetRemoteConfig(Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_1

    :cond_15
    const-string v2, "getValue"

    .line 294
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 295
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->getValue(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_16
    const-string v2, "getInfo"

    .line 296
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 297
    invoke-direct {p0, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->getInfo(Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_1

    :cond_17
    const-string v2, "getAll"

    .line 298
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 299
    invoke-direct {p0, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->getAll(Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_1

    :cond_18
    const-string v2, "didCrashOnPreviousExecution"

    .line 300
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 301
    invoke-direct {p0, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->didCrashOnPreviousExecution(Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_1

    :cond_19
    const-string v2, "setConfigSettings"

    .line 303
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 304
    invoke-direct {p0, p3, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->setConfigSettings(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    goto/16 :goto_1

    :cond_1a
    const-string v2, "setDefaults"

    .line 306
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 307
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->setDefaults(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    :cond_1b
    const-string v2, "verifyPhoneNumber"

    .line 309
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 310
    invoke-virtual {p0, p3, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->verifyPhoneNumber(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    goto/16 :goto_1

    :cond_1c
    const-string v2, "enrollSecondAuthFactor"

    .line 311
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 312
    invoke-virtual {p0, p3, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->enrollSecondAuthFactor(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    goto/16 :goto_1

    :cond_1d
    const-string v2, "verifySecondAuthFactor"

    .line 313
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 314
    invoke-virtual {p0, p3, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->verifySecondAuthFactor(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    goto/16 :goto_1

    :cond_1e
    const-string v2, "listEnrolledSecondAuthFactors"

    .line 315
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 316
    invoke-virtual {p0, p3, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->listEnrolledSecondAuthFactors(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    goto/16 :goto_1

    :cond_1f
    const-string v2, "unenrollSecondAuthFactor"

    .line 317
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 318
    invoke-virtual {p0, p3, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->unenrollSecondAuthFactor(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    goto/16 :goto_1

    :cond_20
    const-string v2, "setLanguageCode"

    .line 319
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 320
    invoke-virtual {p0, p3, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->setLanguageCode(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    goto/16 :goto_1

    :cond_21
    const-string v2, "authenticateUserWithGoogle"

    .line 321
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 322
    invoke-virtual {p0, p3, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->authenticateUserWithGoogle(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    goto/16 :goto_1

    :cond_22
    const-string v2, "authenticateUserWithApple"

    .line 323
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 324
    invoke-virtual {p0, p3, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->authenticateUserWithApple(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    goto/16 :goto_1

    :cond_23
    const-string v2, "authenticateUserWithMicrosoft"

    .line 325
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 326
    invoke-virtual {p0, p3, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->authenticateUserWithMicrosoft(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    goto/16 :goto_1

    :cond_24
    const-string v2, "authenticateUserWithFacebook"

    .line 327
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 328
    invoke-virtual {p0, p3, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->authenticateUserWithFacebook(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    goto/16 :goto_1

    :cond_25
    const-string v2, "createUserWithEmailAndPassword"

    .line 329
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 330
    invoke-virtual {p0, p3, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->createUserWithEmailAndPassword(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    goto/16 :goto_1

    :cond_26
    const-string v2, "signInUserWithEmailAndPassword"

    .line 331
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 332
    invoke-virtual {p0, p3, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->signInUserWithEmailAndPassword(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    goto/16 :goto_1

    :cond_27
    const-string v2, "authenticateUserWithEmailAndPassword"

    .line 333
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 334
    invoke-virtual {p0, p3, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->authenticateUserWithEmailAndPassword(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    goto/16 :goto_1

    :cond_28
    const-string v2, "signInUserWithCustomToken"

    .line 335
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 336
    invoke-virtual {p0, p3, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->signInUserWithCustomToken(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    goto/16 :goto_1

    :cond_29
    const-string v2, "signInUserAnonymously"

    .line 337
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 338
    invoke-virtual {p0, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->signInUserAnonymously(Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_1

    :cond_2a
    const-string v2, "signInWithCredential"

    .line 339
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 340
    invoke-virtual {p0, p3, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->signInWithCredential(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    goto/16 :goto_1

    :cond_2b
    const-string v2, "linkUserWithCredential"

    .line 341
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 342
    invoke-virtual {p0, p3, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->linkUserWithCredential(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    goto/16 :goto_1

    :cond_2c
    const-string v2, "reauthenticateWithCredential"

    .line 343
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 344
    invoke-virtual {p0, p3, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->reauthenticateWithCredential(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    goto/16 :goto_1

    :cond_2d
    const-string v2, "isUserSignedIn"

    .line 345
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 346
    invoke-virtual {p0, p3, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->isUserSignedIn(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    goto/16 :goto_1

    :cond_2e
    const-string v2, "signOutUser"

    .line 347
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 348
    invoke-virtual {p0, p3, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->signOutUser(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    goto/16 :goto_1

    :cond_2f
    const-string v2, "getCurrentUser"

    .line 349
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 350
    invoke-virtual {p0, p3, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->getCurrentUser(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    goto/16 :goto_1

    :cond_30
    const-string v2, "reloadCurrentUser"

    .line 351
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 352
    invoke-virtual {p0, p3, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->reloadCurrentUser(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    goto/16 :goto_1

    :cond_31
    const-string v2, "updateUserProfile"

    .line 353
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 354
    invoke-virtual {p0, p3, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->updateUserProfile(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    goto/16 :goto_1

    :cond_32
    const-string v2, "updateUserEmail"

    .line 355
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 356
    invoke-virtual {p0, p3, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->updateUserEmail(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    goto/16 :goto_1

    :cond_33
    const-string v2, "sendUserEmailVerification"

    .line 357
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 358
    invoke-virtual {p0, p3, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->sendUserEmailVerification(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    goto/16 :goto_1

    :cond_34
    const-string v2, "verifyBeforeUpdateEmail"

    .line 359
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 360
    invoke-virtual {p0, p3, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->verifyBeforeUpdateEmail(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    goto/16 :goto_1

    :cond_35
    const-string v2, "updateUserPassword"

    .line 361
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 362
    invoke-virtual {p0, p3, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->updateUserPassword(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    goto/16 :goto_1

    :cond_36
    const-string v2, "sendUserPasswordResetEmail"

    .line 363
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 364
    invoke-virtual {p0, p3, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->sendUserPasswordResetEmail(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    goto/16 :goto_1

    :cond_37
    const-string v2, "deleteUser"

    .line 365
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 366
    invoke-virtual {p0, p3, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->deleteUser(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    goto/16 :goto_1

    :cond_38
    const-string v2, "useAuthEmulator"

    .line 367
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 368
    invoke-virtual {p0, p3, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->useAuthEmulator(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    goto/16 :goto_1

    :cond_39
    const-string v2, "getClaims"

    .line 369
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 370
    invoke-virtual {p0, p3, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->getClaims(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    goto/16 :goto_1

    :cond_3a
    const-string v2, "startTrace"

    .line 371
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 372
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->startTrace(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3b
    const-string v2, "incrementCounter"

    .line 373
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 374
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3, p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->incrementCounter(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3c
    const-string v2, "stopTrace"

    .line 375
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 376
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->stopTrace(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3d
    const-string v2, "setAnalyticsCollectionEnabled"

    .line 377
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 378
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result p1

    invoke-direct {p0, p3, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->setAnalyticsCollectionEnabled(Lorg/apache/cordova/CallbackContext;Z)V

    goto/16 :goto_1

    :cond_3e
    const-string v2, "isAnalyticsCollectionEnabled"

    .line 379
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 380
    invoke-direct {p0, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->isAnalyticsCollectionEnabled(Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_1

    :cond_3f
    const-string v2, "setPerformanceCollectionEnabled"

    .line 381
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 382
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result p1

    invoke-direct {p0, p3, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->setPerformanceCollectionEnabled(Lorg/apache/cordova/CallbackContext;Z)V

    goto/16 :goto_1

    :cond_40
    const-string v2, "isPerformanceCollectionEnabled"

    .line 383
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 384
    invoke-direct {p0, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->isPerformanceCollectionEnabled(Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_1

    :cond_41
    const-string v2, "setCrashlyticsCollectionEnabled"

    .line 385
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 386
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result p1

    invoke-direct {p0, p3, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->setCrashlyticsCollectionEnabled(Lorg/apache/cordova/CallbackContext;Z)V

    goto/16 :goto_1

    :cond_42
    const-string v2, "isCrashlyticsCollectionEnabled"

    .line 387
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 388
    invoke-direct {p0, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->isCrashlyticsCollectionEnabled(Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_1

    :cond_43
    const-string v2, "clearAllNotifications"

    .line 389
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 390
    invoke-virtual {p0, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->clearAllNotifications(Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_1

    :cond_44
    const-string v2, "setCrashlyticsCustomKey"

    .line 391
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 392
    invoke-direct {p0, p3, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->setCrashlyticsCustomKey(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    goto/16 :goto_1

    :cond_45
    const-string v2, "logMessage"

    .line 393
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 394
    invoke-direct {p0, p2, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->logMessage(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_1

    :cond_46
    const-string v2, "sendCrash"

    .line 395
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 396
    invoke-direct {p0, p2, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->sendCrash(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_1

    :cond_47
    const-string v2, "createChannel"

    .line 397
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 398
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->createChannel(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    :cond_48
    const-string v2, "deleteChannel"

    .line 399
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 400
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->deleteChannel(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_49
    const-string v2, "listChannels"

    .line 401
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 402
    invoke-virtual {p0, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->listChannels(Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_1

    :cond_4a
    const-string v2, "setDefaultChannel"

    .line 403
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 404
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->setDefaultChannel(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    :cond_4b
    const-string v2, "addDocumentToFirestoreCollection"

    .line 405
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 406
    invoke-direct {p0, p2, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->addDocumentToFirestoreCollection(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_1

    :cond_4c
    const-string v2, "setDocumentInFirestoreCollection"

    .line 407
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 408
    invoke-direct {p0, p2, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->setDocumentInFirestoreCollection(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_1

    :cond_4d
    const-string v2, "updateDocumentInFirestoreCollection"

    .line 409
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 410
    invoke-direct {p0, p2, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->updateDocumentInFirestoreCollection(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_1

    :cond_4e
    const-string v2, "deleteDocumentFromFirestoreCollection"

    .line 411
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 412
    invoke-direct {p0, p2, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->deleteDocumentFromFirestoreCollection(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_1

    :cond_4f
    const-string v2, "documentExistsInFirestoreCollection"

    .line 413
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 414
    invoke-direct {p0, p2, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->documentExistsInFirestoreCollection(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_1

    :cond_50
    const-string v2, "fetchDocumentInFirestoreCollection"

    .line 415
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 416
    invoke-direct {p0, p2, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->fetchDocumentInFirestoreCollection(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_1

    :cond_51
    const-string v2, "fetchFirestoreCollection"

    .line 417
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 418
    invoke-direct {p0, p2, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->fetchFirestoreCollection(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_1

    :cond_52
    const-string v2, "listenToDocumentInFirestoreCollection"

    .line 419
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 420
    invoke-direct {p0, p2, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->listenToDocumentInFirestoreCollection(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_1

    :cond_53
    const-string v2, "listenToFirestoreCollection"

    .line 421
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 422
    invoke-direct {p0, p2, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->listenToFirestoreCollection(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_1

    :cond_54
    const-string v2, "removeFirestoreListener"

    .line 423
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 424
    invoke-direct {p0, p2, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->removeFirestoreListener(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_1

    :cond_55
    const-string v2, "functionsHttpsCallable"

    .line 425
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 426
    invoke-direct {p0, p2, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->functionsHttpsCallable(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_1

    :cond_56
    const-string v2, "grantCriticalPermission"

    .line 427
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    const-string v2, "hasCriticalPermission"

    .line 428
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    const-string v2, "setBadgeNumber"

    .line 429
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    const-string v2, "getBadgeNumber"

    .line 430
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    goto :goto_0

    :cond_57
    const-string v2, "deleteInstallationId"

    .line 434
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 435
    invoke-direct {p0, p2, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->deleteInstallationId(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_1

    :cond_58
    const-string v2, "getInstallationId"

    .line 436
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 437
    invoke-direct {p0, p2, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->getInstallationId(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_1

    :cond_59
    const-string v2, "getInstallationToken"

    .line 438
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 439
    invoke-direct {p0, p2, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->getInstallationToken(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_1

    .line 441
    :cond_5a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return v1

    .line 433
    :cond_5b
    :goto_0
    new-instance p1, Lorg/apache/cordova/PluginResult;

    sget-object p2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p1, p2, v3}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Z)V

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v3

    :catch_0
    move-exception p1

    .line 445
    invoke-static {p1, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    return v1
.end method

.method public getClaims(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 1

    .line 2395
    iget-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p2}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lorg/apache/cordova/firebase/FirebasePlugin$61;

    invoke-direct {v0, p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$61;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCurrentUser(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 1

    .line 1212
    iget-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p2}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lorg/apache/cordova/firebase/FirebasePlugin$31;

    invoke-direct {v0, p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$31;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getProviderData(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 1

    .line 2426
    iget-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p2}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lorg/apache/cordova/firebase/FirebasePlugin$62;

    invoke-direct {v0, p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$62;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected hasRuntimePermission(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3868
    invoke-virtual {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->qualifyPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 3871
    :try_start_0
    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "hasPermission"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3872
    iget-object v3, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 3873
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3875
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Cordova v12.0.0 does not support runtime permissions so defaulting to GRANTED for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FirebasePlugin"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public isUserSignedIn(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 1

    .line 1174
    iget-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p2}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lorg/apache/cordova/firebase/FirebasePlugin$29;

    invoke-direct {v0, p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$29;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public linkUserWithCredential(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 2

    .line 1516
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$44;

    invoke-direct {v1, p0, p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$44;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public listChannels(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 2814
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$76;

    invoke-direct {v1, p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$76;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public listEnrolledSecondAuthFactors(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 1

    .line 2064
    iget-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p2}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lorg/apache/cordova/firebase/FirebasePlugin$48;

    invoke-direct {v0, p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$48;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected logErrorToWebview(Ljava/lang/String;)V
    .locals 2

    const-string v0, "FirebasePlugin"

    .line 3537
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3538
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "console.error(\"FirebasePlugin[native]: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->escapeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->executeGlobalJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 481
    invoke-super {p0, p1, p2, p3}, Lorg/apache/cordova/CordovaPlugin;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 485
    :cond_0
    :try_start_0
    invoke-static {p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getSignedInAccountFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 488
    :try_start_1
    const-class p3, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/tasks/Task;->getResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :try_end_1
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 496
    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/google/firebase/auth/GoogleAuthProvider;->getCredential(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/AuthCredential;

    move-result-object p3

    .line 497
    sget-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->instance:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-direct {v0, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->saveAuthCredential(Lcom/google/firebase/auth/AuthCredential;)Ljava/lang/String;

    move-result-object p3

    .line 498
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;

    move-result-object p1

    .line 500
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "instantVerification"

    .line 501
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "id"

    .line 502
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "idToken"

    .line 503
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 505
    sget-object p1, Lorg/apache/cordova/firebase/FirebasePlugin;->activityResultCallbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 490
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result p2

    const/16 p3, 0xa

    if-ne p2, p3, :cond_1

    .line 491
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Unknown server client ID"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 493
    :cond_1
    new-instance p2, Ljava/lang/Exception;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 509
    sget-object p2, Lorg/apache/cordova/firebase/FirebasePlugin;->activityResultCallbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 471
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->authStateListener:Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;

    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->removeAuthStateListener(Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;)V

    const/4 v0, 0x0

    .line 472
    sput-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->instance:Lorg/apache/cordova/firebase/FirebasePlugin;

    .line 473
    sput-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordovaActivity:Landroid/app/Activity;

    .line 474
    sput-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordovaInterface:Lorg/apache/cordova/CordovaInterface;

    .line 475
    sput-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->applicationContext:Landroid/content/Context;

    .line 476
    invoke-super {p0}, Lorg/apache/cordova/CordovaPlugin;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "Notification message on new intent: "

    .line 624
    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaPlugin;->onNewIntent(Landroid/content/Intent;)V

    .line 625
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "google.message_id"

    .line 626
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "messageType"

    const-string v2, "notification"

    .line 627
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tap"

    const-string v2, "background"

    .line 628
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "FirebasePlugin"

    .line 629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    sget-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->applicationContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->sendMessage(Landroid/os/Bundle;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 633
    invoke-static {p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithoutContext(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onPause(Z)V
    .locals 0

    const/4 p1, 0x1

    .line 453
    sput-boolean p1, Lorg/apache/cordova/firebase/FirebasePlugin;->inBackground:Z

    return-void
.end method

.method public onRequestPermissionResult(I[Ljava/lang/String;[I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "No callback context found for permissions request id="

    .line 3901
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 3902
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received result for permissions request id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FirebasePlugin"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3904
    :try_start_0
    sget-object v1, Lorg/apache/cordova/firebase/FirebasePlugin;->postNotificationPermissionRequestCallbackContext:Lorg/apache/cordova/CallbackContext;

    if-nez v1, :cond_0

    .line 3905
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3910
    :cond_0
    array-length p1, p2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v1, p1, :cond_3

    .line 3911
    aget-object v4, p2, v1

    const-string v5, "POST_NOTIFICATIONS"

    .line 3913
    invoke-virtual {p0, v5}, Lorg/apache/cordova/firebase/FirebasePlugin;->qualifyPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3914
    aget v2, p3, v1

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3918
    :cond_3
    sget-object p1, Lorg/apache/cordova/firebase/FirebasePlugin;->postNotificationPermissionRequestCallbackContext:Lorg/apache/cordova/CallbackContext;

    if-eqz v2, :cond_4

    move v0, v3

    :cond_4
    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->success(I)V

    const/4 p1, 0x0

    .line 3919
    sput-object p1, Lorg/apache/cordova/firebase/FirebasePlugin;->postNotificationPermissionRequestCallbackContext:Lorg/apache/cordova/CallbackContext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 3922
    sget-object p2, Lorg/apache/cordova/firebase/FirebasePlugin;->postNotificationPermissionRequestCallbackContext:Lorg/apache/cordova/CallbackContext;

    if-eqz p2, :cond_5

    .line 3923
    invoke-static {p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_2

    .line 3925
    :cond_5
    invoke-static {p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithoutContext(Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method public onReset()V
    .locals 1

    const/4 v0, 0x0

    .line 463
    sput-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->notificationCallbackContext:Lorg/apache/cordova/CallbackContext;

    .line 464
    sput-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->tokenRefreshCallbackContext:Lorg/apache/cordova/CallbackContext;

    .line 465
    sput-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->activityResultCallbackContext:Lorg/apache/cordova/CallbackContext;

    .line 466
    sput-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->authResultCallbackContext:Lorg/apache/cordova/CallbackContext;

    return-void
.end method

.method public onResume(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 458
    sput-boolean p1, Lorg/apache/cordova/firebase/FirebasePlugin;->inBackground:Z

    return-void
.end method

.method protected pluginInitialize()V
    .locals 3

    .line 182
    sput-object p0, Lorg/apache/cordova/firebase/FirebasePlugin;->instance:Lorg/apache/cordova/firebase/FirebasePlugin;

    .line 183
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    sput-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordovaActivity:Landroid/app/Activity;

    .line 184
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->applicationContext:Landroid/content/Context;

    .line 185
    sget-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordovaActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    sput-object v1, Lorg/apache/cordova/firebase/FirebasePlugin;->cordovaInterface:Lorg/apache/cordova/CordovaInterface;

    .line 187
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->firebaseCrashlytics:Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    .line 188
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lorg/apache/cordova/firebase/FirebasePlugin$1;

    invoke-direct {v2, p0, v0}, Lorg/apache/cordova/firebase/FirebasePlugin$1;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected qualifyPermission(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "android.permission."

    .line 3859
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    .line 3862
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public reauthenticateWithCredential(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 2

    .line 1443
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$42;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin$42;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reloadCurrentUser(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 1

    .line 1225
    iget-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p2}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lorg/apache/cordova/firebase/FirebasePlugin$32;

    invoke-direct {v0, p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$32;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected requestPermissions(Lorg/apache/cordova/CordovaPlugin;I[Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3882
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "requestPermissions"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lorg/apache/cordova/CordovaPlugin;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, [Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3883
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    aput-object p3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 3885
    :catch_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "requestPermissions() method not found in CordovaInterface implementation of Cordova v12.0.0"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected sendEmptyPluginResultAndKeepCallback(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 3526
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v0, v1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    const/4 v1, 0x1

    .line 3527
    invoke-virtual {v0, v1}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 3528
    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return-void
.end method

.method protected sendPluginResultAndKeepCallback(ILorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 3511
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v0, v1, p1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;I)V

    .line 3512
    invoke-virtual {p0, v0, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->sendPluginResultAndKeepCallback(Lorg/apache/cordova/PluginResult;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method protected sendPluginResultAndKeepCallback(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 3501
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v0, v1, p1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    .line 3502
    invoke-virtual {p0, v0, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->sendPluginResultAndKeepCallback(Lorg/apache/cordova/PluginResult;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method protected sendPluginResultAndKeepCallback(Lorg/apache/cordova/PluginResult;Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    const/4 v0, 0x1

    .line 3532
    invoke-virtual {p1, v0}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 3533
    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return-void
.end method

.method protected sendPluginResultAndKeepCallback(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 3516
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v0, v1, p1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONArray;)V

    .line 3517
    invoke-virtual {p0, v0, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->sendPluginResultAndKeepCallback(Lorg/apache/cordova/PluginResult;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method protected sendPluginResultAndKeepCallback(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 3521
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v0, v1, p1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 3522
    invoke-virtual {p0, v0, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->sendPluginResultAndKeepCallback(Lorg/apache/cordova/PluginResult;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method protected sendPluginResultAndKeepCallback(ZLorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 3506
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v0, v1, p1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Z)V

    .line 3507
    invoke-virtual {p0, v0, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->sendPluginResultAndKeepCallback(Lorg/apache/cordova/PluginResult;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method public sendUserEmailVerification(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 2

    .line 1353
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$37;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin$37;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendUserPasswordResetEmail(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 2

    .line 1415
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$40;

    invoke-direct {v1, p0, p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$40;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDefaultChannel(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;)V
    .locals 2

    .line 2769
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$74;

    invoke-direct {v1, p0, p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$74;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLanguageCode(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 2

    .line 2135
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$50;

    invoke-direct {v1, p0, p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$50;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public signInUserAnonymously(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 2357
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$59;

    invoke-direct {v1, p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$59;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public signInUserWithCustomToken(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 2

    .line 2338
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$58;

    invoke-direct {v1, p0, p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$58;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public signInUserWithEmailAndPassword(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 2

    .line 2181
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$52;

    invoke-direct {v1, p0, p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$52;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public signInWithCredential(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 2

    .line 1482
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$43;

    invoke-direct {v1, p0, p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$43;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public signOutUser(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 1

    .line 1187
    iget-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p2}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lorg/apache/cordova/firebase/FirebasePlugin$30;

    invoke-direct {v0, p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$30;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unenrollSecondAuthFactor(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 2

    .line 2101
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$49;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin$49;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateUserEmail(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 2

    .line 1337
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$36;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin$36;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateUserPassword(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 2

    .line 1399
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$39;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin$39;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateUserProfile(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 2

    .line 1303
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$35;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin$35;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public useAuthEmulator(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 2

    .line 2369
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$60;

    invoke-direct {v1, p0, p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$60;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public verifyBeforeUpdateEmail(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 2

    .line 1383
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$38;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin$38;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public verifyPhoneNumber(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 2

    .line 1560
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$45;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin$45;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public verifySecondAuthFactor(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 2

    .line 1864
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$47;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin$47;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
