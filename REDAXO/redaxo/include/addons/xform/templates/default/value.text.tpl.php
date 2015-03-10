<?php
    $type = isset($type) ? $type : 'text';
    $class = $type == 'text' ? '' : $type . ' ';
    $value = isset($value) ? $value : stripslashes($this->getValue());
?>
<div class="form-group">
    <label for="<?php echo $this->getFieldId() ?>" class="col-sm-2 control-label <?php echo $this->getWarningClass() ?>"><?php echo $this->getLabel() ?></label>
    <div class="col-sm-10">
        <input type="<?php echo $type ?>" class="form-control <?php echo $class, ' ', $this->getElement(5), ' ', $this->getWarningClass() ?>" name="<?php echo $this->getFieldName() ?>" id="<?php echo $this->getFieldId() ?>" value="<?php echo htmlspecialchars($value) ?>"<?php echo $this->getAttributeElement('placeholder'), $this->getAttributeElement('autocomplete'), $this->getAttributeElement('pattern'), $this->getAttributeElement('required', true), $this->getAttributeElement('disabled', true), $this->getAttributeElement('readonly', true) ?> />
    </div>
</div>
