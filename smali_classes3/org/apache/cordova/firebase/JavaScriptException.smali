.class public Lorg/apache/cordova/firebase/JavaScriptException;
.super Ljava/lang/Exception;
.source "JavaScriptException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p2}, Lorg/apache/cordova/firebase/JavaScriptException;->handleStacktrace(Lorg/json/JSONArray;)V

    return-void
.end method

.method private handleStacktrace(Lorg/json/JSONArray;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 30
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    const/4 v1, 0x0

    .line 32
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 33
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 35
    new-instance v3, Ljava/lang/StackTraceElement;

    const-string v4, "functionName"

    const-string v5, "undefined"

    .line 37
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "fileName"

    .line 38
    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "lineNumber"

    const/4 v8, -0x1

    .line 39
    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {v3, v5, v4, v6, v2}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/cordova/firebase/JavaScriptException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method
