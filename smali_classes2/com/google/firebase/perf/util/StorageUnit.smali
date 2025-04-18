.class public abstract enum Lcom/google/firebase/perf/util/StorageUnit;
.super Ljava/lang/Enum;
.source "StorageUnit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/perf/util/StorageUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/perf/util/StorageUnit;

.field public static final enum BYTES:Lcom/google/firebase/perf/util/StorageUnit;

.field public static final enum GIGABYTES:Lcom/google/firebase/perf/util/StorageUnit;

.field public static final enum KILOBYTES:Lcom/google/firebase/perf/util/StorageUnit;

.field public static final enum MEGABYTES:Lcom/google/firebase/perf/util/StorageUnit;

.field public static final enum TERABYTES:Lcom/google/firebase/perf/util/StorageUnit;


# instance fields
.field numBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 26
    new-instance v0, Lcom/google/firebase/perf/util/StorageUnit$1;

    const-wide v1, 0x10000000000L

    const-string v3, "TERABYTES"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/firebase/perf/util/StorageUnit$1;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/firebase/perf/util/StorageUnit;->TERABYTES:Lcom/google/firebase/perf/util/StorageUnit;

    .line 32
    new-instance v1, Lcom/google/firebase/perf/util/StorageUnit$2;

    const-wide/32 v2, 0x40000000

    const-string v5, "GIGABYTES"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v3}, Lcom/google/firebase/perf/util/StorageUnit$2;-><init>(Ljava/lang/String;IJ)V

    sput-object v1, Lcom/google/firebase/perf/util/StorageUnit;->GIGABYTES:Lcom/google/firebase/perf/util/StorageUnit;

    .line 38
    new-instance v2, Lcom/google/firebase/perf/util/StorageUnit$3;

    const-wide/32 v7, 0x100000

    const-string v3, "MEGABYTES"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v7, v8}, Lcom/google/firebase/perf/util/StorageUnit$3;-><init>(Ljava/lang/String;IJ)V

    sput-object v2, Lcom/google/firebase/perf/util/StorageUnit;->MEGABYTES:Lcom/google/firebase/perf/util/StorageUnit;

    .line 44
    new-instance v3, Lcom/google/firebase/perf/util/StorageUnit$4;

    const-wide/16 v7, 0x400

    const-string v9, "KILOBYTES"

    const/4 v10, 0x3

    invoke-direct {v3, v9, v10, v7, v8}, Lcom/google/firebase/perf/util/StorageUnit$4;-><init>(Ljava/lang/String;IJ)V

    sput-object v3, Lcom/google/firebase/perf/util/StorageUnit;->KILOBYTES:Lcom/google/firebase/perf/util/StorageUnit;

    .line 50
    new-instance v7, Lcom/google/firebase/perf/util/StorageUnit$5;

    const-wide/16 v8, 0x1

    const-string v11, "BYTES"

    const/4 v12, 0x4

    invoke-direct {v7, v11, v12, v8, v9}, Lcom/google/firebase/perf/util/StorageUnit$5;-><init>(Ljava/lang/String;IJ)V

    sput-object v7, Lcom/google/firebase/perf/util/StorageUnit;->BYTES:Lcom/google/firebase/perf/util/StorageUnit;

    const/4 v8, 0x5

    new-array v8, v8, [Lcom/google/firebase/perf/util/StorageUnit;

    aput-object v0, v8, v4

    aput-object v1, v8, v6

    aput-object v2, v8, v5

    aput-object v3, v8, v10

    aput-object v7, v8, v12

    .line 25
    sput-object v8, Lcom/google/firebase/perf/util/StorageUnit;->$VALUES:[Lcom/google/firebase/perf/util/StorageUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput-wide p3, p0, Lcom/google/firebase/perf/util/StorageUnit;->numBytes:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IJLcom/google/firebase/perf/util/StorageUnit$1;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/perf/util/StorageUnit;-><init>(Ljava/lang/String;IJ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/perf/util/StorageUnit;
    .locals 1

    .line 25
    const-class v0, Lcom/google/firebase/perf/util/StorageUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/util/StorageUnit;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/perf/util/StorageUnit;
    .locals 1

    .line 25
    sget-object v0, Lcom/google/firebase/perf/util/StorageUnit;->$VALUES:[Lcom/google/firebase/perf/util/StorageUnit;

    invoke-virtual {v0}, [Lcom/google/firebase/perf/util/StorageUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/perf/util/StorageUnit;

    return-object v0
.end method


# virtual methods
.method public abstract convert(JLcom/google/firebase/perf/util/StorageUnit;)J
.end method

.method public toBytes(J)J
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/google/firebase/perf/util/StorageUnit;->numBytes:J

    mul-long/2addr p1, v0

    return-wide p1
.end method

.method public toGigabytes(J)J
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/google/firebase/perf/util/StorageUnit;->numBytes:J

    mul-long/2addr p1, v0

    sget-object v0, Lcom/google/firebase/perf/util/StorageUnit;->GIGABYTES:Lcom/google/firebase/perf/util/StorageUnit;

    iget-wide v0, v0, Lcom/google/firebase/perf/util/StorageUnit;->numBytes:J

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public toKilobytes(J)J
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/google/firebase/perf/util/StorageUnit;->numBytes:J

    mul-long/2addr p1, v0

    sget-object v0, Lcom/google/firebase/perf/util/StorageUnit;->KILOBYTES:Lcom/google/firebase/perf/util/StorageUnit;

    iget-wide v0, v0, Lcom/google/firebase/perf/util/StorageUnit;->numBytes:J

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public toMegabytes(J)J
    .locals 2

    .line 90
    iget-wide v0, p0, Lcom/google/firebase/perf/util/StorageUnit;->numBytes:J

    mul-long/2addr p1, v0

    sget-object v0, Lcom/google/firebase/perf/util/StorageUnit;->MEGABYTES:Lcom/google/firebase/perf/util/StorageUnit;

    iget-wide v0, v0, Lcom/google/firebase/perf/util/StorageUnit;->numBytes:J

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public toTerabytes(J)J
    .locals 2

    .line 110
    iget-wide v0, p0, Lcom/google/firebase/perf/util/StorageUnit;->numBytes:J

    mul-long/2addr p1, v0

    sget-object v0, Lcom/google/firebase/perf/util/StorageUnit;->TERABYTES:Lcom/google/firebase/perf/util/StorageUnit;

    iget-wide v0, v0, Lcom/google/firebase/perf/util/StorageUnit;->numBytes:J

    div-long/2addr p1, v0

    return-wide p1
.end method
