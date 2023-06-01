.class public Lcom/mediatek/wfo/impl/WifiOffloadServiceResource;
.super Ljava/lang/Object;
.source "WifiOffloadServiceResource.java"


# static fields
.field public static final wfcSupportedIccIdList:[Ljava/lang/String;

.field public static final wfcSupportedMccMncList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 23

    .line 38
    const/16 v0, 0x125

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "20201"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "20202"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "20801"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "26003"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v3, "21403"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v3, "21409"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "21411"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v3, "23001"

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v3, "23201"

    aput-object v3, v0, v1

    const/16 v1, 0x9

    const-string v3, "23205"

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string v3, "23210"

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const-string v3, "26002"

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "26034"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "27602"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "28001"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "23003"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "23099"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "28802"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "26202"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "26203"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "26204"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "26209"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "26277"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "20205"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "23403"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "23415"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "23591"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "21670"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "27402"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "27403"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "27201"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "22210"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "20404"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "20416"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "20420"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "20402"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "26801"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "26803"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "26899"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "22601"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "22605"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "22610"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "21401"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "21406"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "28601"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "28602"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v3, "310026"

    aput-object v3, v0, v1

    const/16 v1, 0x30

    const-string v3, "310030"

    aput-object v3, v0, v1

    const/16 v1, 0x31

    const-string v3, "310070"

    aput-object v3, v0, v1

    const/16 v1, 0x32

    const-string v3, "310090"

    aput-object v3, v0, v1

    const/16 v1, 0x33

    const-string v3, "310150"

    aput-object v3, v0, v1

    const/16 v1, 0x34

    const-string v3, "310170"

    aput-object v3, v0, v1

    const/16 v1, 0x35

    const-string v3, "310210"

    aput-object v3, v0, v1

    const/16 v1, 0x36

    const-string v3, "310260"

    aput-object v3, v0, v1

    const/16 v1, 0x37

    const-string v3, "310330"

    aput-object v3, v0, v1

    const/16 v1, 0x38

    const-string v3, "310280"

    aput-object v3, v0, v1

    const/16 v1, 0x39

    const-string v3, "310380"

    aput-object v3, v0, v1

    const/16 v1, 0x3a

    const-string v3, "310410"

    aput-object v3, v0, v1

    const/16 v1, 0x3b

    const-string v3, "310490"

    aput-object v3, v0, v1

    const/16 v1, 0x3c

    const-string v3, "310560"

    aput-object v3, v0, v1

    const/16 v1, 0x3d

    const-string v3, "310580"

    aput-object v3, v0, v1

    const/16 v1, 0x3e

    const-string v3, "310660"

    aput-object v3, v0, v1

    const/16 v1, 0x3f

    const-string v3, "310680"

    aput-object v3, v0, v1

    const/16 v1, 0x40

    const-string v3, "310980"

    aput-object v3, v0, v1

    const/16 v1, 0x41

    const-string v3, "310990"

    aput-object v3, v0, v1

    const/16 v1, 0x42

    const-string v3, "311180"

    aput-object v3, v0, v1

    const/16 v1, 0x43

    const-string v3, "26201"

    aput-object v3, v0, v1

    const/16 v1, 0x44

    const-string v3, "20206"

    aput-object v3, v0, v1

    const/16 v1, 0x45

    const-string v3, "24002"

    aput-object v3, v0, v1

    const/16 v1, 0x46

    const-string v3, "23806"

    aput-object v3, v0, v1

    const/16 v1, 0x47

    const-string v3, "23430"

    aput-object v3, v0, v1

    const/16 v1, 0x48

    const-string v4, "23431"

    aput-object v4, v0, v1

    const/16 v1, 0x49

    const-string v4, "23432"

    aput-object v4, v0, v1

    const/16 v1, 0x4a

    const-string v4, "23501"

    aput-object v4, v0, v1

    const/16 v1, 0x4b

    const-string v4, "23502"

    aput-object v4, v0, v1

    const/16 v1, 0x4c

    const-string v4, "40409"

    aput-object v4, v0, v1

    const/16 v1, 0x4d

    const-string v5, "40436"

    aput-object v5, v0, v1

    const/16 v1, 0x4e

    const-string v6, "40452"

    aput-object v6, v0, v1

    const/16 v1, 0x4f

    const-string v7, "40467"

    aput-object v7, v0, v1

    const/16 v1, 0x50

    const-string v8, "40483"

    aput-object v8, v0, v1

    const/16 v1, 0x51

    const-string v9, "40485"

    aput-object v9, v0, v1

    const/16 v1, 0x52

    const-string v10, "40501"

    aput-object v10, v0, v1

    const/16 v1, 0x53

    const-string v11, "40503"

    aput-object v11, v0, v1

    const/16 v1, 0x54

    const-string v12, "40504"

    aput-object v12, v0, v1

    const/16 v1, 0x55

    const-string v13, "40509"

    aput-object v13, v0, v1

    const/16 v1, 0x56

    const-string v14, "40510"

    aput-object v14, v0, v1

    const/16 v1, 0x57

    const-string v15, "40513"

    aput-object v15, v0, v1

    const/16 v1, 0x58

    const-string v16, "405840"

    aput-object v16, v0, v1

    const/16 v1, 0x59

    const-string v16, "24403"

    aput-object v16, v0, v1

    const/16 v1, 0x5a

    const-string v17, "24412"

    aput-object v17, v0, v1

    const/16 v1, 0x5b

    const-string v18, "24409"

    aput-object v18, v0, v1

    const/16 v1, 0x5c

    const-string v18, "24499"

    aput-object v18, v0, v1

    const/16 v1, 0x5d

    const-string v18, "52088"

    aput-object v18, v0, v1

    const/16 v1, 0x5e

    const-string v19, "52099"

    aput-object v19, v0, v1

    const/16 v1, 0x5f

    const-string v20, "262080"

    aput-object v20, v0, v1

    const/16 v1, 0x60

    const-string v20, "24099"

    aput-object v20, v0, v1

    const/16 v1, 0x61

    const-string v20, "26207"

    aput-object v20, v0, v1

    const/16 v1, 0x62

    const-string v21, "26208"

    aput-object v21, v0, v1

    const/16 v1, 0x63

    const-string v22, "26211"

    aput-object v22, v0, v1

    const/16 v1, 0x64

    aput-object v4, v0, v1

    const/16 v1, 0x65

    const-string v4, "40418"

    aput-object v4, v0, v1

    const/16 v1, 0x66

    aput-object v5, v0, v1

    const/16 v1, 0x67

    const-string v4, "40450"

    aput-object v4, v0, v1

    const/16 v1, 0x68

    aput-object v6, v0, v1

    const/16 v1, 0x69

    aput-object v7, v0, v1

    const/16 v1, 0x6a

    aput-object v8, v0, v1

    const/16 v1, 0x6b

    aput-object v9, v0, v1

    const/16 v1, 0x6c

    aput-object v10, v0, v1

    const/16 v1, 0x6d

    aput-object v11, v0, v1

    const/16 v1, 0x6e

    aput-object v12, v0, v1

    const/16 v1, 0x6f

    const-string v4, "40505"

    aput-object v4, v0, v1

    const/16 v1, 0x70

    const-string v4, "40506"

    aput-object v4, v0, v1

    const/16 v1, 0x71

    const-string v4, "40507"

    aput-object v4, v0, v1

    const/16 v1, 0x72

    const-string v4, "40508"

    aput-object v4, v0, v1

    const/16 v1, 0x73

    aput-object v13, v0, v1

    const/16 v1, 0x74

    aput-object v14, v0, v1

    const/16 v1, 0x75

    const-string v4, "40511"

    aput-object v4, v0, v1

    const/16 v1, 0x76

    const-string v4, "40512"

    aput-object v4, v0, v1

    const/16 v1, 0x77

    aput-object v15, v0, v1

    const/16 v1, 0x78

    const-string v4, "40514"

    aput-object v4, v0, v1

    const/16 v1, 0x79

    const-string v4, "40515"

    aput-object v4, v0, v1

    const/16 v1, 0x7a

    const-string v4, "40516"

    aput-object v4, v0, v1

    const/16 v1, 0x7b

    const-string v4, "40517"

    aput-object v4, v0, v1

    const/16 v1, 0x7c

    const-string v4, "40518"

    aput-object v4, v0, v1

    const/16 v1, 0x7d

    const-string v4, "40519"

    aput-object v4, v0, v1

    const/16 v1, 0x7e

    const-string v4, "40520"

    aput-object v4, v0, v1

    const/16 v1, 0x7f

    const-string v4, "40521"

    aput-object v4, v0, v1

    const/16 v1, 0x80

    const-string v4, "40522"

    aput-object v4, v0, v1

    const/16 v1, 0x81

    const-string v4, "40523"

    aput-object v4, v0, v1

    const/16 v1, 0x82

    const-string v4, "405854"

    aput-object v4, v0, v1

    const/16 v1, 0x83

    const-string v4, "405855"

    aput-object v4, v0, v1

    const/16 v1, 0x84

    const-string v4, "405856"

    aput-object v4, v0, v1

    const/16 v1, 0x85

    const-string v4, "405857"

    aput-object v4, v0, v1

    const/16 v1, 0x86

    const-string v4, "405858"

    aput-object v4, v0, v1

    const/16 v1, 0x87

    const-string v4, "405859"

    aput-object v4, v0, v1

    const/16 v1, 0x88

    const-string v4, "405860"

    aput-object v4, v0, v1

    const/16 v1, 0x89

    const-string v4, "405861"

    aput-object v4, v0, v1

    const/16 v1, 0x8a

    const-string v4, "405862"

    aput-object v4, v0, v1

    const/16 v1, 0x8b

    const-string v4, "405863"

    aput-object v4, v0, v1

    const/16 v1, 0x8c

    const-string v4, "405864"

    aput-object v4, v0, v1

    const/16 v1, 0x8d

    const-string v4, "405865"

    aput-object v4, v0, v1

    const/16 v1, 0x8e

    const-string v4, "405866"

    aput-object v4, v0, v1

    const/16 v1, 0x8f

    const-string v4, "405867"

    aput-object v4, v0, v1

    const/16 v1, 0x90

    const-string v4, "405868"

    aput-object v4, v0, v1

    const/16 v1, 0x91

    const-string v4, "405869"

    aput-object v4, v0, v1

    const/16 v1, 0x92

    const-string v4, "405870"

    aput-object v4, v0, v1

    const/16 v1, 0x93

    const-string v4, "405871"

    aput-object v4, v0, v1

    const/16 v1, 0x94

    const-string v4, "405872"

    aput-object v4, v0, v1

    const/16 v1, 0x95

    const-string v4, "405873"

    aput-object v4, v0, v1

    const/16 v1, 0x96

    const-string v4, "405874"

    aput-object v4, v0, v1

    const/16 v1, 0x97

    const-string v4, "40410"

    aput-object v4, v0, v1

    const/16 v1, 0x98

    const-string v4, "40431"

    aput-object v4, v0, v1

    const/16 v1, 0x99

    const-string v4, "40440"

    aput-object v4, v0, v1

    const/16 v1, 0x9a

    const-string v4, "40445"

    aput-object v4, v0, v1

    const/16 v1, 0x9b

    const-string v4, "40449"

    aput-object v4, v0, v1

    const/16 v1, 0x9c

    const-string v4, "40551"

    aput-object v4, v0, v1

    const/16 v1, 0x9d

    const-string v4, "40552"

    aput-object v4, v0, v1

    const/16 v1, 0x9e

    const-string v4, "40553"

    aput-object v4, v0, v1

    const/16 v1, 0x9f

    const-string v4, "40554"

    aput-object v4, v0, v1

    const/16 v1, 0xa0

    const-string v4, "40555"

    aput-object v4, v0, v1

    const/16 v1, 0xa1

    const-string v4, "40556"

    aput-object v4, v0, v1

    const/16 v1, 0xa2

    const-string v4, "40490"

    aput-object v4, v0, v1

    const/16 v1, 0xa3

    const-string v4, "40492"

    aput-object v4, v0, v1

    const/16 v1, 0xa4

    const-string v4, "40493"

    aput-object v4, v0, v1

    const/16 v1, 0xa5

    const-string v4, "40494"

    aput-object v4, v0, v1

    const/16 v1, 0xa6

    const-string v4, "40495"

    aput-object v4, v0, v1

    const/16 v1, 0xa7

    const-string v4, "40496"

    aput-object v4, v0, v1

    const/16 v1, 0xa8

    const-string v4, "40497"

    aput-object v4, v0, v1

    const/16 v1, 0xa9

    const-string v4, "40498"

    aput-object v4, v0, v1

    const/16 v1, 0xaa

    const-string v4, "40402"

    aput-object v4, v0, v1

    const/16 v1, 0xab

    const-string v4, "40403"

    aput-object v4, v0, v1

    const/16 v1, 0xac

    const-string v4, "42402"

    aput-object v4, v0, v1

    const/16 v1, 0xad

    const-string v4, "65501"

    aput-object v4, v0, v1

    const/16 v1, 0xae

    const-string v4, "50501"

    aput-object v4, v0, v1

    const/16 v1, 0xaf

    const-string v4, "50571"

    aput-object v4, v0, v1

    const/16 v1, 0xb0

    const-string v4, "50572"

    aput-object v4, v0, v1

    const/16 v1, 0xb1

    const-string v4, "52501"

    aput-object v4, v0, v1

    const/16 v1, 0xb2

    const-string v4, "25002"

    aput-object v4, v0, v1

    const/16 v1, 0xb3

    aput-object v16, v0, v1

    const/16 v1, 0xb4

    aput-object v17, v0, v1

    const/16 v1, 0xb5

    aput-object v18, v0, v1

    const/16 v1, 0xb6

    aput-object v19, v0, v1

    const/16 v1, 0xb7

    const-string v4, "25001"

    aput-object v4, v0, v1

    const/16 v1, 0xb8

    const-string v4, "20820"

    aput-object v4, v0, v1

    const/16 v1, 0xb9

    const-string v4, "20888"

    aput-object v4, v0, v1

    const/16 v1, 0xba

    const-string v4, "50503"

    aput-object v4, v0, v1

    const/16 v1, 0xbb

    const-string v4, "50506"

    aput-object v4, v0, v1

    const/16 v1, 0xbc

    const-string v4, "24001"

    aput-object v4, v0, v1

    const/16 v1, 0xbd

    const-string v4, "24008"

    aput-object v4, v0, v1

    const/16 v1, 0xbe

    const-string v4, "24005"

    aput-object v4, v0, v1

    const/16 v1, 0xbf

    const-string v4, "24202"

    aput-object v4, v0, v1

    const/16 v1, 0xc0

    const-string v4, "24205"

    aput-object v4, v0, v1

    const/16 v1, 0xc1

    aput-object v17, v0, v1

    const/16 v1, 0xc2

    const-string v4, "24413"

    aput-object v4, v0, v1

    const/16 v1, 0xc3

    const-string v4, "24436"

    aput-object v4, v0, v1

    const/16 v1, 0xc4

    const-string v4, "24491"

    aput-object v4, v0, v1

    const/16 v1, 0xc5

    const-string v4, "23802"

    aput-object v4, v0, v1

    const/16 v1, 0xc6

    const-string v4, "23877"

    aput-object v4, v0, v1

    const/16 v1, 0xc7

    const-string v4, "24201"

    aput-object v4, v0, v1

    const/16 v1, 0xc8

    const-string v4, "45606"

    aput-object v4, v0, v1

    const/16 v1, 0xc9

    const-string v4, "26006"

    aput-object v4, v0, v1

    const/16 v1, 0xca

    const-string v4, "53024"

    aput-object v4, v0, v1

    const/16 v1, 0xcb

    const-string v4, "262080"

    aput-object v4, v0, v1

    const/16 v1, 0xcc

    const-string v4, "24099"

    aput-object v4, v0, v1

    const/16 v1, 0xcd

    aput-object v20, v0, v1

    const/16 v1, 0xce

    aput-object v21, v0, v1

    const/16 v1, 0xcf

    aput-object v22, v0, v1

    const/16 v1, 0xd0

    const-string v4, "46605"

    aput-object v4, v0, v1

    const/16 v1, 0xd1

    const-string v4, "46692"

    aput-object v4, v0, v1

    const/16 v1, 0xd2

    const-string v4, "72405"

    aput-object v4, v0, v1

    const/16 v1, 0xd3

    const-string v4, "72412"

    aput-object v4, v0, v1

    const/16 v1, 0xd4

    const-string v4, "72438"

    aput-object v4, v0, v1

    const/16 v1, 0xd5

    const-string v4, "72401"

    aput-object v4, v0, v1

    const/16 v1, 0xd6

    const-string v4, "72419"

    aput-object v4, v0, v1

    const/16 v1, 0xd7

    const-string v4, "72411"

    aput-object v4, v0, v1

    const/16 v1, 0xd8

    const-string v4, "72410"

    aput-object v4, v0, v1

    const/16 v1, 0xd9

    const-string v4, "72406"

    aput-object v4, v0, v1

    const/16 v1, 0xda

    const-string v4, "72423"

    aput-object v4, v0, v1

    const/16 v1, 0xdb

    aput-object v18, v0, v1

    const/16 v1, 0xdc

    aput-object v19, v0, v1

    const/16 v1, 0xdd

    const-string v4, "52004"

    aput-object v4, v0, v1

    const/16 v1, 0xde

    const-string v4, "52000"

    aput-object v4, v0, v1

    const/16 v1, 0xdf

    const-string v4, "24405"

    aput-object v4, v0, v1

    const/16 v1, 0xe0

    const-string v4, "24406"

    aput-object v4, v0, v1

    const/16 v1, 0xe1

    const-string v4, "24421"

    aput-object v4, v0, v1

    const/16 v1, 0xe2

    const-string v4, "46605"

    aput-object v4, v0, v1

    const/16 v1, 0xe3

    const-string v4, "20810"

    aput-object v4, v0, v1

    const/16 v1, 0xe4

    const-string v4, "20811"

    aput-object v4, v0, v1

    const/16 v1, 0xe5

    const-string v4, "20813"

    aput-object v4, v0, v1

    const/16 v1, 0xe6

    const-string v4, "22801"

    aput-object v4, v0, v1

    const/16 v1, 0xe7

    const-string v4, "22802"

    aput-object v4, v0, v1

    const/16 v1, 0xe8

    const-string v4, "29501"

    aput-object v4, v0, v1

    const/16 v1, 0xe9

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "722070"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    aput-object v20, v0, v1

    const/16 v1, 0xec

    aput-object v21, v0, v1

    const/16 v1, 0xed

    aput-object v22, v0, v1

    const/16 v1, 0xee

    const-string v2, "42004"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, "42001"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "60201"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "60203"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "72401"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "72419"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "72411"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "72410"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "72406"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "72423"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, "72402"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "72403"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, "72404"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, "72408"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, "23453"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "23454"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "23420"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    aput-object v3, v0, v1

    const/16 v1, 0x100

    const-string v2, "26278"

    aput-object v2, v0, v1

    const/16 v1, 0x101

    const-string v2, "52005"

    aput-object v2, v0, v1

    const/16 v1, 0x102

    const-string v2, "52018"

    aput-object v2, v0, v1

    const/16 v1, 0x103

    const-string v2, "52001"

    aput-object v2, v0, v1

    const/16 v1, 0x104

    const-string v2, "52003"

    aput-object v2, v0, v1

    const/16 v1, 0x105

    const-string v2, "65510"

    aput-object v2, v0, v1

    const/16 v1, 0x106

    const-string v2, "71606"

    aput-object v2, v0, v1

    const/16 v1, 0x107

    const-string v2, "71610"

    aput-object v2, v0, v1

    const/16 v1, 0x108

    const-string v2, "71617"

    aput-object v2, v0, v1

    const/16 v1, 0x109

    const-string v2, "73002"

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    const-string v2, "72207"

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    const-string v2, "72234"

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    const-string v2, "732123"

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    const-string v2, "722310"

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    const-string v2, "722320"

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    const-string v2, "722330"

    aput-object v2, v0, v1

    const/16 v1, 0x110

    const-string v2, "722070"

    aput-object v2, v0, v1

    const/16 v1, 0x111

    const-string v2, "73002"

    aput-object v2, v0, v1

    const/16 v1, 0x112

    const-string v2, "73009"

    aput-object v2, v0, v1

    const/16 v1, 0x113

    const-string v2, "73001"

    aput-object v2, v0, v1

    const/16 v1, 0x114

    const-string v2, "73003"

    aput-object v2, v0, v1

    const/16 v1, 0x115

    const-string v2, "732101"

    aput-object v2, v0, v1

    const/16 v1, 0x116

    const-string v2, "45412"

    aput-object v2, v0, v1

    const/16 v1, 0x117

    const-string v2, "23802"

    aput-object v2, v0, v1

    const/16 v1, 0x118

    const-string v2, "23877"

    aput-object v2, v0, v1

    const/16 v1, 0x119

    const-string v2, "302490"

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    const-string v2, "46601"

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    const-string v2, "50502"

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    const-string v2, "60204"

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    const-string v2, "65507"

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    const-string v2, "41302"

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    const-string v2, "334020"

    aput-object v2, v0, v1

    const/16 v1, 0x120

    const-string v2, "65302"

    aput-object v2, v0, v1

    const/16 v1, 0x121

    const-string v2, "51009"

    aput-object v2, v0, v1

    const/16 v1, 0x122

    const-string v2, "51028"

    aput-object v2, v0, v1

    const/16 v1, 0x123

    const-string v2, "65502"

    aput-object v2, v0, v1

    const/16 v1, 0x124

    const-string v2, "20610"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/wfo/impl/WifiOffloadServiceResource;->wfcSupportedMccMncList:[Ljava/lang/String;

    .line 455
    const-string v0, "8988605"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/wfo/impl/WifiOffloadServiceResource;->wfcSupportedIccIdList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
