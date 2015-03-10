<div class="form-group <?php echo $this->getHTMLClass() ?>">
    <div class="col-sm-12 text-right">
        <input type="submit" class="submit btn btn-primary <?php echo $this->getElement(4), ' ', $this->getWarningClass() ?>" name="<?php echo $this->getFieldName() ?>" id="<?php echo $this->getFieldId() ?>" value="<?php echo htmlspecialchars(stripslashes(rex_translate($this->getValue()))) ?>" />
    </div>
</div>
