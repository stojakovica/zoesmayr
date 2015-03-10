<div class="form-group">
    <label for="<?php echo $this->getFieldId() ?>" class="col-sm-2 control-label <?php echo $this->getWarningClass() ?>"><?php echo $this->getLabel() ?></label>
    <div class="col-sm-10">
        <textarea class="form-control <?php echo $this->getElement(5), ' ', $this->getWarningClass() ?>" name="<?php echo $this->getFieldName() ?>" id="<?php echo $this->getFieldId() ?>" cols="80" rows="10" <?php echo $this->getAttributeElement('placeholder'), $this->getAttributeElement('pattern'), $this->getAttributeElement('required', true), $this->getAttributeElement('disabled', true), $this->getAttributeElement('readonly', true) ?>><?php echo htmlspecialchars(stripslashes($this->getValue())) ?></textarea>
    </div>
</div>
