<div class="row" style="margin-bottom: 10px;">
    <div class="col d-flex" style="justify-content: space-between; align-items: flex-end;">
        <h3>
            Thêm Banner
        </h3>
        <a href="index.php?action=banner&query=banner_list" class="btn btn-outline-dark btn-fw">
            <i class="mdi mdi-reply"></i>
            Quay lại
        </a>
    </div>
</div>

<form method="POST" action="modules/banner/xuly.php" enctype="multipart/form-data">
    <div class="row">
        <div class="col-lg-8 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <div class="input-item form-group">
                        <label for="image" class="d-block">Hình ảnh Banner</label>
                        <div class="image-box w-100">
                            <figure class="image-container p-relative">
                                <img id="chosen-image" alt="Hình ảnh banner" style="width: 100%; height: auto;">
                                <figcaption id="file-name"></figcaption>
                            </figure>
                            <input type="file" class="d-none" id="banner_image" name="banner_image" accept="image/*">
                            <label class="label-for-image" for="banner_image">
                                <i class="fas fa-upload"></i> &nbsp; Tải lên hình ảnh
                            </label>
                        </div>
                    </div>
                    <button type="submit" name="banner_add" class="btn btn-primary btn-icon-text mg-t-16">
                        <i class="ti-file btn-icon-prepend"></i>
                        Thêm
                    </button>
                </div>
            </div>
        </div>
    </div>
</form>

<script>
    let uploadButton = document.getElementById("banner_image");
    let chosenImage = document.getElementById("chosen-image");
    let fileName = document.getElementById("file-name");

    uploadButton.onchange = () => {
        let reader = new FileReader();
        reader.readAsDataURL(uploadButton.files[0]);
        reader.onload = () => {
            chosenImage.setAttribute("src", reader.result);
        }
        fileName.textContent = uploadButton.files[0].name;
    }
</script>
