package G;

import android.text.InputFilter;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.SparseArray;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public final class g extends A.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TextView f100c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final e f101d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f102e = true;

    public g(TextView textView) {
        this.f100c = textView;
        this.f101d = new e(textView);
    }

    @Override // A.b
    public final boolean G() {
        return this.f102e;
    }

    @Override // A.b
    public final void c0(boolean z2) {
        if (z2) {
            TextView textView = this.f100c;
            textView.setTransformationMethod(j0(textView.getTransformationMethod()));
        }
    }

    @Override // A.b
    public final void d0(boolean z2) {
        this.f102e = z2;
        TextView textView = this.f100c;
        textView.setTransformationMethod(j0(textView.getTransformationMethod()));
        textView.setFilters(y(textView.getFilters()));
    }

    @Override // A.b
    public final TransformationMethod j0(TransformationMethod transformationMethod) {
        if (this.f102e) {
            return ((transformationMethod instanceof k) || (transformationMethod instanceof PasswordTransformationMethod)) ? transformationMethod : new k(transformationMethod);
        }
        return transformationMethod instanceof k ? ((k) transformationMethod).f107a : transformationMethod;
    }

    @Override // A.b
    public final InputFilter[] y(InputFilter[] inputFilterArr) {
        if (!this.f102e) {
            SparseArray sparseArray = new SparseArray(1);
            for (int i2 = 0; i2 < inputFilterArr.length; i2++) {
                InputFilter inputFilter = inputFilterArr[i2];
                if (inputFilter instanceof e) {
                    sparseArray.put(i2, inputFilter);
                }
            }
            if (sparseArray.size() == 0) {
                return inputFilterArr;
            }
            int length = inputFilterArr.length;
            InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length - sparseArray.size()];
            int i3 = 0;
            for (int i4 = 0; i4 < length; i4++) {
                if (sparseArray.indexOfKey(i4) < 0) {
                    inputFilterArr2[i3] = inputFilterArr[i4];
                    i3++;
                }
            }
            return inputFilterArr2;
        }
        int length2 = inputFilterArr.length;
        int i5 = 0;
        while (true) {
            e eVar = this.f101d;
            if (i5 >= length2) {
                InputFilter[] inputFilterArr3 = new InputFilter[inputFilterArr.length + 1];
                System.arraycopy(inputFilterArr, 0, inputFilterArr3, 0, length2);
                inputFilterArr3[length2] = eVar;
                return inputFilterArr3;
            }
            if (inputFilterArr[i5] == eVar) {
                return inputFilterArr;
            }
            i5++;
        }
    }
}
