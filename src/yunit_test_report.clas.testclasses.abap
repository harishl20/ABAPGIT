*"* use this source file for your ABAP unit test classes
class ltcl_ definition final for testing
  duration short
  risk level harmless.

  private section.
    methods:
      first_test for testing raising cx_static_check.
endclass.


class ltcl_ implementation.

  method first_test.
    DATA: lv_sum TYPE p.
    CLEAR lv_sum.
    PERFORM calc_mul IN PROGRAM ytest_abapgit USING 9 5 CHANGING lv_sum.
    cl_aunit_assert=>assert_equals( act = lv_sum exp = 45
    msg = 'Calculations wrong').
  endmethod.

endclass.
