<div class="form-group">
    <label for="<?php echo $this->getFieldId() ?>" class="col-sm-2 control-label <?php echo $this->getWarningClass() ?>"><?php echo $this->getLabel() ?></label>
    <div class="col-sm-10">
        <select class="form-control <?php echo $this->getWarningClass() ?>" id="<?php echo $this->getFieldId() ?>" <?php echo $multiple ? 'name="' . $this->getFieldName() . '[]" multiple="multiple"' : 'name="' . $this->getFieldName() . '"' ?>  size="<?php echo $size ?>">
            <?php foreach ($options as $key => $value): ?>
                <option value="<?php echo htmlspecialchars($key) ?>"<?php echo in_array($key, $this->getValue()) ? ' selected="selected"' : '' ?>><?php echo $this->getLabelStyle($value) ?></option>
            <?php endforeach ?>
        </select>
    </div>
</div>
