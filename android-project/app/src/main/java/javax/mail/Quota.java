package javax.mail;

/* JADX INFO: loaded from: classes.dex */
public class Quota {
    public String quotaRoot;
    public Resource[] resources;

    public static class Resource {
        public long limit;
        public String name;
        public long usage;

        public Resource(String str, long j2, long j3) {
            this.name = str;
            this.usage = j2;
            this.limit = j3;
        }
    }

    public Quota(String str) {
        this.quotaRoot = str;
    }

    public void setResourceLimit(String str, long j2) {
        if (this.resources == null) {
            this.resources = new Resource[]{new Resource(str, 0L, j2)};
            return;
        }
        int i2 = 0;
        while (true) {
            Resource[] resourceArr = this.resources;
            if (i2 >= resourceArr.length) {
                int length = resourceArr.length;
                Resource[] resourceArr2 = new Resource[length + 1];
                System.arraycopy(resourceArr, 0, resourceArr2, 0, resourceArr.length);
                resourceArr2[length] = new Resource(str, 0L, j2);
                this.resources = resourceArr2;
                return;
            }
            if (resourceArr[i2].name.equalsIgnoreCase(str)) {
                this.resources[i2].limit = j2;
                return;
            }
            i2++;
        }
    }
}
