*&---------------------------------------------------------------------*
*& Report ytest_abapgit
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ytest_abapgit.

START-OF-SELECTION.
DATA: lv_res TYPE p.
PERFORM calc_mul USING 3 4 CHANGING lv_res.
FORM calc_mul USING uv_num1 TYPE p uv_num2 TYPE p CHANGING cv_mul.
*cv_mul = uv_num1 * uv_num2.
*cv_mul = uv_num1 - uv_num2.
  cv_mul = uv_num1 + uv_num2.
  cv_mul = uv_num1 - uv_num2.
ENDFORM.
