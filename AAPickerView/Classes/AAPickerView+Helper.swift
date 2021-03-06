//
//  AAPickerView+Helper.swift
//  AAPickerView
//
//  Created by Engr. Ahsan Ali on 04/02/2017.
//  Copyright (c) 2017 AA-Creations. All rights reserved.
//


/// Picker View type
///
/// - StringPicker: string picker
/// - DatePicker: date picker
public enum AAPickerType {
    case StringPicker
    case DatePicker
}

//MARK: UIPickerViewDelegate
extension AAPickerView: UIPickerViewDelegate {
    
    open func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return stringPickerData?.count ?? 0
    }
    
    open func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let label = pickerRow
        label.text = stringPickerData![row]
        return label
    }
    
}
