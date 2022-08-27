(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func (param i32 i32 i32 i32 i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func))
  (type (;4;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;5;) (func (result i32)))
  (import "env" "println" (func $println (type 0)))
  (import "env" "render_fill_rect" (func $render_fill_rect (type 1)))
  (import "env" "render_text" (func $render_text (type 1)))
  (import "env" "request_level" (func $request_level (type 2)))
  (func $__wasm_call_ctors (type 3))
  (func $step (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 f64)
    block  ;; label = @1
      i32.const 0
      i32.load8_u offset=1136
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      i32.load8_u offset=16436
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      i32.const 0
      i32.const 1
      i32.store8 offset=16436
      i32.const 0
      local.set 2
      i32.const 0
      local.set 3
      loop  ;; label = @2
        local.get 2
        local.set 4
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 1
                      i32.const 255
                      i32.and
                      local.tee 1
                      i32.const -69
                      i32.add
                      br_table 2 (;@7;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 1 (;@8;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 0 (;@9;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 2 (;@7;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 1 (;@8;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 0 (;@9;) 3 (;@6;)
                    end
                    i32.const 0
                    local.get 2
                    i32.const 50
                    i32.div_s
                    i32.store offset=16444
                    i32.const 0
                    local.get 2
                    i32.const 50
                    i32.rem_s
                    i32.store offset=16440
                    local.get 2
                    local.set 4
                    local.get 1
                    i32.const -101
                    i32.add
                    br_table 1 (;@7;) 4 (;@4;) 4 (;@4;) 4 (;@4;) 4 (;@4;) 4 (;@4;) 4 (;@4;) 4 (;@4;) 4 (;@4;) 4 (;@4;) 4 (;@4;) 0 (;@8;) 4 (;@4;)
                  end
                  i32.const 0
                  local.get 2
                  i32.const 50
                  i32.div_s
                  i32.const 25
                  i32.mul
                  i32.store offset=1100
                  i32.const 0
                  local.get 2
                  i32.const 50
                  i32.rem_s
                  i32.const 25
                  i32.mul
                  i32.store offset=1096
                  local.get 1
                  i32.const 101
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 2
                  local.set 4
                  br 3 (;@4;)
                end
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 3
                    i32.const 1137
                    i32.add
                    i32.load8_u
                    i32.const 45
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 2
                    local.set 4
                    br 1 (;@7;)
                  end
                  local.get 3
                  i32.const 1
                  i32.add
                  local.set 1
                  local.get 2
                  i32.const 1
                  i32.add
                  local.set 4
                  loop  ;; label = @8
                    local.get 4
                    i32.const 1
                    i32.add
                    local.set 4
                    local.get 1
                    i32.const 1137
                    i32.add
                    local.set 5
                    local.get 1
                    i32.const 1
                    i32.add
                    local.tee 3
                    local.set 1
                    local.get 5
                    i32.load8_u
                    i32.const 45
                    i32.eq
                    br_if 0 (;@8;)
                  end
                end
                i32.const 0
                local.set 1
                block  ;; label = @7
                  i32.const 0
                  i32.load8_u offset=16473
                  br_if 0 (;@7;)
                  i32.const 16473
                  local.set 5
                  br 2 (;@5;)
                end
                block  ;; label = @7
                  i32.const 0
                  i32.load8_u offset=16513
                  br_if 0 (;@7;)
                  i32.const 16513
                  local.set 5
                  i32.const 1
                  local.set 1
                  br 2 (;@5;)
                end
                block  ;; label = @7
                  i32.const 0
                  i32.load8_u offset=16553
                  br_if 0 (;@7;)
                  i32.const 16553
                  local.set 5
                  i32.const 2
                  local.set 1
                  br 2 (;@5;)
                end
                block  ;; label = @7
                  i32.const 0
                  i32.load8_u offset=16593
                  br_if 0 (;@7;)
                  i32.const 16593
                  local.set 5
                  i32.const 3
                  local.set 1
                  br 2 (;@5;)
                end
                block  ;; label = @7
                  i32.const 0
                  i32.load8_u offset=16633
                  br_if 0 (;@7;)
                  i32.const 16633
                  local.set 5
                  i32.const 4
                  local.set 1
                  br 2 (;@5;)
                end
                block  ;; label = @7
                  i32.const 0
                  i32.load8_u offset=16673
                  br_if 0 (;@7;)
                  i32.const 16673
                  local.set 5
                  i32.const 5
                  local.set 1
                  br 2 (;@5;)
                end
                block  ;; label = @7
                  i32.const 0
                  i32.load8_u offset=16713
                  br_if 0 (;@7;)
                  i32.const 16713
                  local.set 5
                  i32.const 6
                  local.set 1
                  br 2 (;@5;)
                end
                block  ;; label = @7
                  i32.const 0
                  i32.load8_u offset=16753
                  br_if 0 (;@7;)
                  i32.const 16753
                  local.set 5
                  i32.const 7
                  local.set 1
                  br 2 (;@5;)
                end
                block  ;; label = @7
                  i32.const 0
                  i32.load8_u offset=16793
                  br_if 0 (;@7;)
                  i32.const 16793
                  local.set 5
                  i32.const 8
                  local.set 1
                  br 2 (;@5;)
                end
                block  ;; label = @7
                  i32.const 0
                  i32.load8_u offset=16833
                  br_if 0 (;@7;)
                  i32.const 16833
                  local.set 5
                  i32.const 9
                  local.set 1
                  br 2 (;@5;)
                end
                block  ;; label = @7
                  i32.const 0
                  i32.load8_u offset=16873
                  br_if 0 (;@7;)
                  i32.const 16873
                  local.set 5
                  i32.const 10
                  local.set 1
                  br 2 (;@5;)
                end
                block  ;; label = @7
                  i32.const 0
                  i32.load8_u offset=16913
                  br_if 0 (;@7;)
                  i32.const 16913
                  local.set 5
                  i32.const 11
                  local.set 1
                  br 2 (;@5;)
                end
                block  ;; label = @7
                  i32.const 0
                  i32.load8_u offset=16953
                  br_if 0 (;@7;)
                  i32.const 16953
                  local.set 5
                  i32.const 12
                  local.set 1
                  br 2 (;@5;)
                end
                block  ;; label = @7
                  i32.const 0
                  i32.load8_u offset=16993
                  br_if 0 (;@7;)
                  i32.const 16993
                  local.set 5
                  i32.const 13
                  local.set 1
                  br 2 (;@5;)
                end
                block  ;; label = @7
                  i32.const 0
                  i32.load8_u offset=17033
                  br_if 0 (;@7;)
                  i32.const 17033
                  local.set 5
                  i32.const 14
                  local.set 1
                  br 2 (;@5;)
                end
                block  ;; label = @7
                  i32.const 0
                  i32.load8_u offset=17073
                  br_if 0 (;@7;)
                  i32.const 17073
                  local.set 5
                  i32.const 15
                  local.set 1
                  br 2 (;@5;)
                end
                block  ;; label = @7
                  i32.const 0
                  i32.load8_u offset=17113
                  br_if 0 (;@7;)
                  i32.const 17113
                  local.set 5
                  i32.const 16
                  local.set 1
                  br 2 (;@5;)
                end
                block  ;; label = @7
                  i32.const 0
                  i32.load8_u offset=17153
                  br_if 0 (;@7;)
                  i32.const 17153
                  local.set 5
                  i32.const 17
                  local.set 1
                  br 2 (;@5;)
                end
                block  ;; label = @7
                  i32.const 0
                  i32.load8_u offset=17193
                  br_if 0 (;@7;)
                  i32.const 17193
                  local.set 5
                  i32.const 18
                  local.set 1
                  br 2 (;@5;)
                end
                i32.const 0
                i32.load8_u offset=17233
                br_if 2 (;@4;)
                i32.const 17233
                local.set 5
                i32.const 19
                local.set 1
                br 1 (;@5;)
              end
              local.get 2
              local.set 4
              local.get 1
              i32.const 10
              i32.eq
              br_if 2 (;@3;)
              br 1 (;@4;)
            end
            local.get 5
            i32.const 1
            i32.store8
            local.get 1
            i32.const 40
            i32.mul
            local.tee 1
            i32.const 16480
            i32.add
            local.get 2
            i32.const 50
            i32.rem_s
            i32.const 25
            i32.mul
            i32.store
            local.get 1
            i32.const 16452
            i32.add
            local.get 4
            i32.const 50
            i32.div_s
            local.tee 5
            i32.const 25
            i32.mul
            i32.const -25
            i32.add
            i32.store
            local.get 1
            i32.const 16448
            i32.add
            local.get 4
            local.get 5
            i32.const 50
            i32.mul
            i32.sub
            i32.const 25
            i32.mul
            local.tee 5
            i32.store
            local.get 1
            i32.const 16484
            i32.add
            local.get 5
            i32.const -25
            i32.add
            i32.store
          end
          local.get 4
          i32.const 17248
          i32.add
          local.get 3
          i32.const 1136
          i32.add
          i32.load8_u
          i32.const 35
          i32.eq
          i32.store8
          local.get 4
          i32.const 1
          i32.add
          local.set 2
        end
        local.get 3
        i32.const 1528
        i32.gt_s
        br_if 1 (;@1;)
        local.get 3
        i32.const 1
        i32.add
        local.tee 3
        i32.const 1136
        i32.add
        i32.load8_u
        local.set 1
        br 0 (;@2;)
      end
    end
    block  ;; label = @1
      i32.const 0
      i32.load8_u offset=1121
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 1096
      call $update_entity
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          i32.load offset=18748
          local.tee 1
          i32.const 1
          i32.lt_s
          br_if 0 (;@3;)
          local.get 1
          i32.const -1
          i32.add
          local.set 1
          br 1 (;@2;)
        end
        i32.const 0
        i32.load8_u offset=18752
        i32.eqz
        br_if 1 (;@1;)
        call $shoot
        i32.const 15
        local.set 1
      end
      i32.const 0
      local.get 1
      i32.store offset=18748
    end
    i32.const -400
    local.set 1
    loop  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 19168
        i32.add
        local.tee 4
        i32.load8_u
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 1
          i32.const 19172
          i32.add
          local.tee 2
          i32.load
          local.tee 5
          local.get 1
          i32.const 19176
          i32.add
          local.tee 6
          i32.load
          local.tee 3
          local.get 1
          i32.const 19180
          i32.add
          i32.load
          local.get 0
          i32.mul
          local.tee 7
          i32.const 12
          call $collision_x
          i32.const 0
          i32.gt_s
          br_if 0 (;@3;)
          local.get 5
          local.get 3
          local.get 1
          i32.const 19184
          i32.add
          i32.load
          local.get 0
          i32.mul
          local.tee 8
          i32.const 12
          call $collision_y
          i32.const 0
          i32.gt_s
          br_if 0 (;@3;)
          local.get 6
          local.get 3
          local.get 8
          i32.add
          local.tee 3
          i32.store
          local.get 2
          local.get 5
          local.get 7
          i32.add
          local.tee 5
          i32.store
          local.get 5
          i32.const 1250
          i32.gt_u
          br_if 0 (;@3;)
          local.get 3
          i32.const 751
          i32.lt_s
          br_if 1 (;@2;)
        end
        local.get 4
        i32.const 0
        i32.store8
      end
      local.get 1
      i32.const 20
      i32.add
      local.tee 1
      br_if 0 (;@1;)
    end
    i32.const 0
    local.set 7
    loop  ;; label = @1
      block  ;; label = @2
        local.get 7
        i32.const 40
        i32.mul
        local.tee 1
        i32.const 16473
        i32.add
        local.tee 8
        i32.load8_u
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        i32.const 16448
        i32.add
        local.tee 4
        call $update_entity
        block  ;; label = @3
          local.get 1
          i32.const 16480
          i32.add
          i32.load
          local.get 4
          i32.load
          local.tee 5
          i32.lt_s
          br_if 0 (;@3;)
          local.get 1
          i32.const 16472
          i32.add
          i32.const 1
          i32.store8
        end
        local.get 1
        i32.const 16472
        i32.add
        local.set 4
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  i32.const 16484
                  i32.add
                  i32.load
                  local.get 5
                  i32.gt_s
                  br_if 0 (;@7;)
                  local.get 4
                  i32.const 0
                  i32.store8
                  br 1 (;@6;)
                end
                local.get 4
                i32.load8_u
                br_if 1 (;@5;)
              end
              local.get 1
              i32.const 16464
              i32.add
              f64.load
              local.set 9
              br 1 (;@4;)
            end
            local.get 1
            i32.const 16464
            i32.add
            local.tee 4
            f64.load
            local.tee 9
            f64.const 0x1.8p+0 (;=1.5;)
            f64.lt
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            local.get 9
            f64.const 0x1.3333333333333p-3 (;=0.15;)
            f64.add
            f64.store
            br 1 (;@3;)
          end
          local.get 9
          f64.const -0x1.8p+0 (;=-1.5;)
          f64.gt
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.const 16464
          i32.add
          local.get 9
          f64.const -0x1.3333333333333p-3 (;=-0.15;)
          f64.add
          f64.store
        end
        local.get 5
        i32.const 50
        i32.add
        local.set 2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              i32.const 0
              i32.load offset=1096
              local.tee 4
              local.get 5
              i32.lt_s
              br_if 0 (;@5;)
              local.get 4
              local.get 2
              i32.le_s
              br_if 1 (;@4;)
            end
            local.get 4
            local.get 5
            i32.gt_s
            br_if 1 (;@3;)
            local.get 4
            i32.const 50
            i32.add
            local.get 5
            i32.lt_s
            br_if 1 (;@3;)
          end
          block  ;; label = @4
            block  ;; label = @5
              i32.const 0
              i32.load offset=1100
              local.tee 4
              local.get 1
              i32.const 16452
              i32.add
              i32.load
              local.tee 3
              i32.lt_s
              br_if 0 (;@5;)
              local.get 4
              local.get 3
              i32.const 50
              i32.add
              i32.le_s
              br_if 1 (;@4;)
            end
            local.get 4
            i32.const 50
            i32.add
            local.get 3
            i32.lt_s
            br_if 1 (;@3;)
            local.get 4
            local.get 3
            i32.gt_s
            br_if 1 (;@3;)
          end
          i32.const 0
          i32.const 0
          i32.store8 offset=1121
          i32.const 1036
          call $println
          return
        end
        local.get 1
        i32.const 16452
        i32.add
        local.set 6
        i32.const -400
        local.set 1
        loop  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 19168
            i32.add
            i32.load8_u
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.const 19172
                i32.add
                i32.load
                local.tee 4
                local.get 5
                i32.le_s
                br_if 0 (;@6;)
                local.get 4
                local.get 2
                i32.lt_s
                br_if 1 (;@5;)
              end
              local.get 4
              local.get 5
              i32.ge_s
              br_if 1 (;@4;)
              local.get 4
              i32.const 50
              i32.add
              local.get 5
              i32.le_s
              br_if 1 (;@4;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.const 19176
                i32.add
                i32.load
                local.tee 4
                local.get 6
                i32.load
                local.tee 3
                i32.le_s
                br_if 0 (;@6;)
                local.get 4
                local.get 3
                i32.const 50
                i32.add
                i32.lt_s
                br_if 1 (;@5;)
              end
              local.get 4
              i32.const 50
              i32.add
              local.get 3
              i32.le_s
              br_if 1 (;@4;)
              local.get 4
              local.get 3
              i32.ge_s
              br_if 1 (;@4;)
            end
            local.get 8
            i32.const 0
            i32.store8
            br 2 (;@2;)
          end
          local.get 1
          i32.const 20
          i32.add
          local.tee 1
          br_if 0 (;@3;)
        end
      end
      local.get 7
      i32.const 1
      i32.add
      local.tee 7
      i32.const 20
      i32.ne
      br_if 0 (;@1;)
    end)
  (func $update_entity (type 2) (param i32 i32)
    (local i32 f64 f64 f64 i32 i32)
    local.get 1
    i32.load8_u offset=27
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load8_u offset=26
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 2
            i32.const 255
            i32.and
            br_if 0 (;@4;)
            local.get 1
            i32.const 1
            i32.store8 offset=24
          end
          block  ;; label = @4
            local.get 1
            f64.load offset=16
            local.tee 3
            f64.const 0x1.8p+0 (;=1.5;)
            f64.lt
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            local.get 3
            f64.const 0x1.3333333333333p-3 (;=0.15;)
            f64.add
            local.tee 3
            f64.store offset=16
          end
          local.get 2
          i32.const 255
          i32.and
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 1
        f64.load offset=16
        local.set 3
        local.get 2
        i32.const 255
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.const 0
        i32.store8 offset=24
      end
      local.get 3
      f64.const -0x1.8p+0 (;=-1.5;)
      f64.gt
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 3
      f64.const -0x1.3333333333333p-3 (;=-0.15;)
      f64.add
      local.tee 3
      f64.store offset=16
    end
    local.get 3
    f64.const -0x1.47ae147ae147bp-4 (;=-0.08;)
    f64.add
    local.get 3
    local.get 3
    f64.const 0x0p+0 (;=0;)
    f64.gt
    local.tee 2
    select
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        br_if 0 (;@2;)
        local.get 4
        f64.const 0x0p+0 (;=0;)
        f64.lt
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 1
      local.get 4
      f64.const 0x1.47ae147ae147bp-4 (;=0.08;)
      f64.add
      local.get 4
      local.get 4
      f64.const 0x0p+0 (;=0;)
      f64.lt
      select
      local.tee 3
      f64.store offset=16
    end
    block  ;; label = @1
      local.get 1
      i32.load8_u offset=29
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.load8_u offset=28
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 0
      i32.store8 offset=28
      local.get 1
      i64.const -4611686018427387904
      i64.store offset=8
    end
    block  ;; label = @1
      local.get 1
      f64.load offset=8
      local.tee 4
      f64.const 0x1p+1 (;=2;)
      f64.lt
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 4
      f64.const 0x1.999999999999ap-4 (;=0.1;)
      f64.add
      local.tee 4
      f64.store offset=8
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        local.get 0
        f64.convert_i32_s
        local.tee 5
        f64.mul
        f64.const 0x1p-1 (;=0.5;)
        f64.mul
        local.tee 3
        f64.abs
        f64.const 0x1p+31 (;=2.14748e+09;)
        f64.lt
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.trunc_f64_s
        local.set 0
        br 1 (;@1;)
      end
      i32.const -2147483648
      local.set 0
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load
        local.tee 6
        local.get 1
        i32.load offset=4
        local.tee 7
        local.get 0
        i32.const 50
        call $collision_x
        local.tee 2
        i32.const -1
        i32.ne
        br_if 0 (;@2;)
        local.get 6
        local.get 0
        i32.add
        local.set 2
        br 1 (;@1;)
      end
      local.get 1
      i64.const 0
      i64.store offset=16
    end
    local.get 1
    local.get 2
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        local.get 5
        f64.mul
        f64.const 0x1p-1 (;=0.5;)
        f64.mul
        local.tee 3
        f64.abs
        f64.const 0x1p+31 (;=2.14748e+09;)
        f64.lt
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.trunc_f64_s
        local.set 0
        br 1 (;@1;)
      end
      i32.const -2147483648
      local.set 0
    end
    block  ;; label = @1
      local.get 2
      local.get 7
      local.get 0
      i32.const 50
      call $collision_y
      local.tee 2
      i32.const -1
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      local.get 7
      local.get 0
      i32.add
      i32.store offset=4
      return
    end
    local.get 1
    i64.const 0
    i64.store offset=8
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 1
    i32.const 1
    i32.store8 offset=28)
  (func $shoot (type 3)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          i32.load8_u offset=18768
          br_if 0 (;@3;)
          i32.const 18768
          local.set 0
          i32.const 0
          local.set 1
          br 1 (;@2;)
        end
        block  ;; label = @3
          i32.const 0
          i32.load8_u offset=18788
          br_if 0 (;@3;)
          i32.const 18788
          local.set 0
          i32.const 1
          local.set 1
          br 1 (;@2;)
        end
        block  ;; label = @3
          i32.const 0
          i32.load8_u offset=18808
          br_if 0 (;@3;)
          i32.const 18808
          local.set 0
          i32.const 2
          local.set 1
          br 1 (;@2;)
        end
        block  ;; label = @3
          i32.const 0
          i32.load8_u offset=18828
          br_if 0 (;@3;)
          i32.const 18828
          local.set 0
          i32.const 3
          local.set 1
          br 1 (;@2;)
        end
        block  ;; label = @3
          i32.const 0
          i32.load8_u offset=18848
          br_if 0 (;@3;)
          i32.const 18848
          local.set 0
          i32.const 4
          local.set 1
          br 1 (;@2;)
        end
        block  ;; label = @3
          i32.const 0
          i32.load8_u offset=18868
          br_if 0 (;@3;)
          i32.const 18868
          local.set 0
          i32.const 5
          local.set 1
          br 1 (;@2;)
        end
        block  ;; label = @3
          i32.const 0
          i32.load8_u offset=18888
          br_if 0 (;@3;)
          i32.const 18888
          local.set 0
          i32.const 6
          local.set 1
          br 1 (;@2;)
        end
        block  ;; label = @3
          i32.const 0
          i32.load8_u offset=18908
          br_if 0 (;@3;)
          i32.const 18908
          local.set 0
          i32.const 7
          local.set 1
          br 1 (;@2;)
        end
        block  ;; label = @3
          i32.const 0
          i32.load8_u offset=18928
          br_if 0 (;@3;)
          i32.const 18928
          local.set 0
          i32.const 8
          local.set 1
          br 1 (;@2;)
        end
        block  ;; label = @3
          i32.const 0
          i32.load8_u offset=18948
          br_if 0 (;@3;)
          i32.const 18948
          local.set 0
          i32.const 9
          local.set 1
          br 1 (;@2;)
        end
        block  ;; label = @3
          i32.const 0
          i32.load8_u offset=18968
          br_if 0 (;@3;)
          i32.const 18968
          local.set 0
          i32.const 10
          local.set 1
          br 1 (;@2;)
        end
        block  ;; label = @3
          i32.const 0
          i32.load8_u offset=18988
          br_if 0 (;@3;)
          i32.const 18988
          local.set 0
          i32.const 11
          local.set 1
          br 1 (;@2;)
        end
        block  ;; label = @3
          i32.const 0
          i32.load8_u offset=19008
          br_if 0 (;@3;)
          i32.const 19008
          local.set 0
          i32.const 12
          local.set 1
          br 1 (;@2;)
        end
        block  ;; label = @3
          i32.const 0
          i32.load8_u offset=19028
          br_if 0 (;@3;)
          i32.const 19028
          local.set 0
          i32.const 13
          local.set 1
          br 1 (;@2;)
        end
        block  ;; label = @3
          i32.const 0
          i32.load8_u offset=19048
          br_if 0 (;@3;)
          i32.const 19048
          local.set 0
          i32.const 14
          local.set 1
          br 1 (;@2;)
        end
        block  ;; label = @3
          i32.const 0
          i32.load8_u offset=19068
          br_if 0 (;@3;)
          i32.const 19068
          local.set 0
          i32.const 15
          local.set 1
          br 1 (;@2;)
        end
        block  ;; label = @3
          i32.const 0
          i32.load8_u offset=19088
          br_if 0 (;@3;)
          i32.const 19088
          local.set 0
          i32.const 16
          local.set 1
          br 1 (;@2;)
        end
        block  ;; label = @3
          i32.const 0
          i32.load8_u offset=19108
          br_if 0 (;@3;)
          i32.const 19108
          local.set 0
          i32.const 17
          local.set 1
          br 1 (;@2;)
        end
        block  ;; label = @3
          i32.const 0
          i32.load8_u offset=19128
          br_if 0 (;@3;)
          i32.const 19128
          local.set 0
          i32.const 18
          local.set 1
          br 1 (;@2;)
        end
        i32.const 0
        i32.load8_u offset=19148
        br_if 1 (;@1;)
        i32.const 19148
        local.set 0
        i32.const 19
        local.set 1
      end
      local.get 0
      i32.const 1
      i32.store8
      local.get 1
      i32.const 20
      i32.mul
      local.tee 0
      i32.const 18780
      i32.add
      i32.const 1
      i32.const -1
      i32.const 0
      i32.load8_u offset=1120
      local.tee 1
      select
      i32.store
      local.get 0
      i32.const 18776
      i32.add
      i32.const 0
      i32.load offset=1100
      i32.const 19
      i32.add
      i32.store
      local.get 0
      i32.const 18772
      i32.add
      i32.const 0
      i32.load offset=1096
      local.tee 0
      i32.const 50
      i32.add
      local.get 0
      local.get 1
      select
      i32.store
    end)
  (func $collision_x (type 4) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    i32.const 1200
    local.set 4
    block  ;; label = @1
      local.get 2
      local.get 0
      i32.add
      local.tee 5
      i32.const 1200
      i32.gt_s
      br_if 0 (;@1;)
      i32.const 0
      local.set 4
      local.get 0
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      i32.add
      local.set 6
      local.get 0
      i32.const 50
      i32.add
      local.tee 7
      local.get 2
      i32.add
      local.set 8
      i32.const 0
      local.set 9
      block  ;; label = @2
        local.get 2
        i32.const 0
        i32.gt_s
        br_if 0 (;@2;)
        i32.const 17248
        local.set 10
        loop  ;; label = @3
          block  ;; label = @4
            local.get 6
            local.get 9
            i32.const 25
            i32.mul
            local.tee 4
            i32.le_s
            br_if 0 (;@4;)
            local.get 4
            i32.const 25
            i32.add
            local.get 1
            i32.le_s
            br_if 0 (;@4;)
            i32.const 25
            local.set 4
            local.get 10
            local.set 3
            loop  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.load8_u
                i32.eqz
                br_if 0 (;@6;)
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 7
                    local.get 4
                    i32.const -25
                    i32.add
                    local.tee 11
                    i32.gt_s
                    br_if 0 (;@8;)
                    local.get 8
                    local.get 11
                    i32.ge_s
                    br_if 1 (;@7;)
                  end
                  local.get 4
                  local.get 0
                  i32.gt_s
                  br_if 1 (;@6;)
                  local.get 5
                  local.get 4
                  i32.gt_s
                  br_if 1 (;@6;)
                  local.get 2
                  i32.eqz
                  br_if 1 (;@6;)
                  br 6 (;@1;)
                end
                local.get 2
                br_if 5 (;@1;)
              end
              local.get 3
              i32.const 1
              i32.add
              local.set 3
              local.get 4
              i32.const 25
              i32.add
              local.tee 4
              i32.const 1275
              i32.ne
              br_if 0 (;@5;)
            end
          end
          local.get 10
          i32.const 50
          i32.add
          local.set 10
          i32.const -1
          local.set 4
          local.get 9
          i32.const 1
          i32.add
          local.tee 9
          i32.const 30
          i32.ne
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      i32.const 0
      local.set 2
      i32.const 17248
      local.set 9
      loop  ;; label = @2
        block  ;; label = @3
          local.get 6
          local.get 2
          i32.const 25
          i32.mul
          local.tee 4
          i32.le_s
          br_if 0 (;@3;)
          local.get 4
          i32.const 25
          i32.add
          local.get 1
          i32.le_s
          br_if 0 (;@3;)
          i32.const -50
          local.set 4
          local.get 9
          local.set 3
          loop  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.load8_u
              i32.eqz
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 7
                local.get 4
                i32.const 50
                i32.add
                local.tee 11
                i32.gt_s
                br_if 0 (;@6;)
                local.get 8
                local.get 11
                i32.ge_s
                br_if 5 (;@1;)
              end
              local.get 4
              i32.const 75
              i32.add
              local.tee 11
              local.get 0
              i32.gt_s
              br_if 0 (;@5;)
              local.get 5
              local.get 11
              i32.le_s
              br_if 4 (;@1;)
            end
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            local.get 4
            i32.const 25
            i32.add
            local.tee 4
            i32.const 1200
            i32.ne
            br_if 0 (;@4;)
          end
        end
        local.get 9
        i32.const 50
        i32.add
        local.set 9
        i32.const -1
        local.set 4
        local.get 2
        i32.const 1
        i32.add
        local.tee 2
        i32.const 30
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 4)
  (func $collision_y (type 4) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        local.get 1
        i32.add
        local.tee 4
        i32.const 750
        local.get 3
        i32.sub
        local.tee 5
        i32.gt_s
        br_if 0 (;@2;)
        local.get 0
        i32.const 50
        i32.add
        local.set 6
        local.get 3
        local.get 1
        i32.add
        local.tee 7
        local.get 2
        i32.add
        local.set 8
        block  ;; label = @3
          local.get 2
          i32.const 1
          i32.lt_s
          br_if 0 (;@3;)
          i32.const 0
          local.set 9
          i32.const 17248
          local.set 10
          loop  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 7
                local.get 9
                i32.const 25
                i32.mul
                local.tee 5
                i32.gt_s
                br_if 0 (;@6;)
                local.get 8
                local.get 5
                i32.lt_s
                br_if 0 (;@6;)
                i32.const 50
                local.set 11
                local.get 10
                local.set 2
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 2
                    i32.load8_u
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 6
                    local.get 11
                    i32.const -50
                    i32.add
                    i32.le_s
                    br_if 0 (;@8;)
                    local.get 11
                    i32.const -25
                    i32.add
                    local.get 0
                    i32.gt_s
                    br_if 7 (;@1;)
                  end
                  block  ;; label = @8
                    local.get 2
                    i32.const 1
                    i32.add
                    i32.load8_u
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 6
                    local.get 11
                    i32.const -25
                    i32.add
                    i32.le_s
                    br_if 0 (;@8;)
                    local.get 11
                    local.get 0
                    i32.gt_s
                    br_if 7 (;@1;)
                  end
                  local.get 2
                  i32.const 2
                  i32.add
                  local.set 2
                  local.get 11
                  i32.const 50
                  i32.add
                  local.tee 11
                  i32.const 1300
                  i32.ne
                  br_if 0 (;@7;)
                  br 2 (;@5;)
                end
              end
              local.get 5
              i32.const 25
              i32.add
              local.tee 2
              local.get 1
              i32.gt_s
              br_if 0 (;@5;)
              local.get 4
              local.get 2
              i32.gt_s
              br_if 0 (;@5;)
              i32.const 50
              local.set 11
              local.get 10
              local.set 2
              loop  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  i32.load8_u
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 6
                  local.get 11
                  i32.const -50
                  i32.add
                  i32.le_s
                  br_if 0 (;@7;)
                  local.get 11
                  i32.const -25
                  i32.add
                  local.get 0
                  i32.gt_s
                  br_if 6 (;@1;)
                end
                block  ;; label = @7
                  local.get 2
                  i32.const 1
                  i32.add
                  i32.load8_u
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 6
                  local.get 11
                  i32.const -25
                  i32.add
                  i32.le_s
                  br_if 0 (;@7;)
                  local.get 11
                  local.get 0
                  i32.gt_s
                  br_if 6 (;@1;)
                end
                local.get 2
                i32.const 2
                i32.add
                local.set 2
                local.get 11
                i32.const 50
                i32.add
                local.tee 11
                i32.const 1300
                i32.ne
                br_if 0 (;@6;)
              end
            end
            local.get 10
            i32.const 50
            i32.add
            local.set 10
            i32.const -1
            local.set 5
            local.get 9
            i32.const 1
            i32.add
            local.tee 9
            i32.const 30
            i32.ne
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        i32.const -1
        local.set 5
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 9
        i32.const 17248
        local.set 10
        loop  ;; label = @3
          local.get 9
          i32.const 25
          i32.mul
          local.tee 2
          i32.const 25
          i32.add
          local.set 3
          block  ;; label = @4
            block  ;; label = @5
              local.get 7
              local.get 2
              i32.gt_s
              br_if 0 (;@5;)
              local.get 8
              local.get 2
              i32.lt_s
              br_if 0 (;@5;)
              i32.const 50
              local.set 11
              local.get 10
              local.set 2
              loop  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  i32.load8_u
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 6
                  local.get 11
                  i32.const -50
                  i32.add
                  i32.le_s
                  br_if 0 (;@7;)
                  local.get 11
                  i32.const -25
                  i32.add
                  local.get 0
                  i32.le_s
                  br_if 0 (;@7;)
                  local.get 3
                  return
                end
                block  ;; label = @7
                  local.get 2
                  i32.const 1
                  i32.add
                  i32.load8_u
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 6
                  local.get 11
                  i32.const -25
                  i32.add
                  i32.le_s
                  br_if 0 (;@7;)
                  local.get 11
                  local.get 0
                  i32.le_s
                  br_if 0 (;@7;)
                  local.get 3
                  return
                end
                local.get 2
                i32.const 2
                i32.add
                local.set 2
                local.get 11
                i32.const 50
                i32.add
                local.tee 11
                i32.const 1300
                i32.ne
                br_if 0 (;@6;)
                br 2 (;@4;)
              end
            end
            i32.const 50
            local.set 2
            local.get 10
            local.set 11
            loop  ;; label = @5
              block  ;; label = @6
                local.get 11
                i32.load8_u
                i32.eqz
                br_if 0 (;@6;)
                local.get 6
                local.get 2
                i32.const -50
                i32.add
                i32.le_s
                br_if 0 (;@6;)
                local.get 2
                i32.const -25
                i32.add
                local.get 0
                i32.le_s
                br_if 0 (;@6;)
                local.get 3
                local.get 1
                i32.gt_s
                br_if 0 (;@6;)
                local.get 4
                local.get 3
                i32.gt_s
                br_if 0 (;@6;)
                local.get 3
                return
              end
              block  ;; label = @6
                local.get 11
                i32.const 1
                i32.add
                i32.load8_u
                i32.eqz
                br_if 0 (;@6;)
                local.get 6
                local.get 2
                i32.const -25
                i32.add
                i32.le_s
                br_if 0 (;@6;)
                local.get 2
                local.get 0
                i32.le_s
                br_if 0 (;@6;)
                local.get 3
                local.get 1
                i32.gt_s
                br_if 0 (;@6;)
                local.get 4
                local.get 3
                i32.gt_s
                br_if 0 (;@6;)
                local.get 3
                return
              end
              local.get 11
              i32.const 2
              i32.add
              local.set 11
              local.get 2
              i32.const 50
              i32.add
              local.tee 2
              i32.const 1300
              i32.ne
              br_if 0 (;@5;)
            end
          end
          local.get 10
          i32.const 50
          i32.add
          local.set 10
          local.get 9
          i32.const 1
          i32.add
          local.tee 9
          i32.const 30
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 5
      return
    end
    local.get 5
    local.get 3
    i32.sub)
  (func $render (type 3)
    (local i32 i32 i32 i32 i32)
    i32.const 0
    local.set 0
    i32.const 0
    i32.const 0
    i32.const 0
    i32.const 1250
    i32.const 750
    call $render_fill_rect
    i32.const 16776960
    i32.const 0
    i32.load offset=16440
    i32.const 25
    i32.mul
    i32.const 0
    i32.load offset=16444
    i32.const 25
    i32.mul
    i32.const 25
    i32.const 25
    call $render_fill_rect
    i32.const 16711680
    i32.const 0
    i32.load offset=1096
    i32.const 0
    i32.load offset=1100
    i32.const 50
    i32.const 50
    call $render_fill_rect
    i32.const 17248
    local.set 1
    loop  ;; label = @1
      local.get 0
      i32.const 25
      i32.mul
      local.set 2
      local.get 1
      local.set 3
      i32.const 0
      local.set 4
      loop  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.load8_u
          i32.eqz
          br_if 0 (;@3;)
          i32.const 65280
          local.get 4
          local.get 2
          i32.const 25
          i32.const 25
          call $render_fill_rect
        end
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        local.get 4
        i32.const 25
        i32.add
        local.tee 4
        i32.const 1250
        i32.ne
        br_if 0 (;@2;)
      end
      local.get 1
      i32.const 50
      i32.add
      local.set 1
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      i32.const 30
      i32.ne
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      i32.const 0
      i32.load8_u offset=1121
      br_if 0 (;@1;)
      i32.const 16777215
      i32.const 1058
      i32.const 40
      i32.const 625
      i32.const 375
      call $render_text
    end
    block  ;; label = @1
      i32.const 0
      i32.load offset=16440
      i32.const 25
      i32.mul
      local.tee 3
      i32.const 25
      i32.add
      i32.const 0
      i32.load offset=1096
      local.tee 4
      i32.le_s
      br_if 0 (;@1;)
      local.get 3
      local.get 4
      i32.const 50
      i32.add
      i32.ge_s
      br_if 0 (;@1;)
      i32.const 0
      i32.load offset=16444
      i32.const 25
      i32.mul
      local.tee 3
      i32.const 25
      i32.add
      i32.const 0
      i32.load offset=1100
      local.tee 4
      i32.le_s
      br_if 0 (;@1;)
      local.get 3
      local.get 4
      i32.const 50
      i32.add
      i32.ge_s
      br_if 0 (;@1;)
      i32.const 16777215
      i32.const 1083
      i32.const 40
      i32.const 625
      i32.const 375
      call $render_text
      i32.const 1047
      call $println
    end
    i32.const -400
    local.set 3
    loop  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 19168
        i32.add
        i32.load8_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        i32.const 65535
        local.get 3
        i32.const 19172
        i32.add
        i32.load
        local.get 3
        i32.const 19176
        i32.add
        i32.load
        i32.const 50
        i32.const 12
        call $render_fill_rect
      end
      local.get 3
      i32.const 20
      i32.add
      local.tee 3
      br_if 0 (;@1;)
    end
    i32.const -800
    local.set 3
    loop  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 17273
        i32.add
        i32.load8_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        i32.const 255
        local.get 3
        i32.const 17248
        i32.add
        i32.load
        local.get 3
        i32.const 17252
        i32.add
        i32.load
        i32.const 50
        i32.const 50
        call $render_fill_rect
      end
      local.get 3
      i32.const 40
      i32.add
      local.tee 3
      br_if 0 (;@1;)
    end)
  (func $game_keydown (type 0) (param i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.const -32
              i32.add
              br_table 2 (;@3;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 1 (;@4;) 2 (;@3;) 0 (;@5;) 3 (;@2;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 1 (;@4;) 4 (;@1;) 4 (;@1;) 0 (;@5;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 3 (;@2;) 4 (;@1;) 4 (;@1;) 4 (;@1;) 2 (;@3;) 4 (;@1;)
            end
            i32.const 0
            i32.const 1
            i32.store8 offset=1122
            return
          end
          i32.const 0
          i32.const 1
          i32.store8 offset=1123
          return
        end
        i32.const 0
        i32.const 1
        i32.store8 offset=1125
        return
      end
      block  ;; label = @2
        i32.const 0
        i32.load offset=18748
        br_if 0 (;@2;)
        i32.const 1041
        call $println
        call $shoot
        i32.const 0
        i32.const 15
        i32.store offset=18748
      end
      i32.const 0
      i32.const 1
      i32.store8 offset=18752
    end)
  (func $game_keyup (type 0) (param i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.const -32
                i32.add
                br_table 2 (;@4;) 5 (;@1;) 5 (;@1;) 5 (;@1;) 5 (;@1;) 1 (;@5;) 2 (;@4;) 0 (;@6;) 3 (;@3;) 5 (;@1;) 5 (;@1;) 5 (;@1;) 5 (;@1;) 5 (;@1;) 5 (;@1;) 5 (;@1;) 5 (;@1;) 5 (;@1;) 5 (;@1;) 5 (;@1;) 5 (;@1;) 5 (;@1;) 5 (;@1;) 5 (;@1;) 5 (;@1;) 5 (;@1;) 5 (;@1;) 5 (;@1;) 5 (;@1;) 5 (;@1;) 5 (;@1;) 5 (;@1;) 5 (;@1;) 1 (;@5;) 5 (;@1;) 5 (;@1;) 0 (;@6;) 5 (;@1;) 5 (;@1;) 5 (;@1;) 5 (;@1;) 5 (;@1;) 5 (;@1;) 5 (;@1;) 5 (;@1;) 5 (;@1;) 5 (;@1;) 5 (;@1;) 5 (;@1;) 5 (;@1;) 4 (;@2;) 3 (;@3;) 5 (;@1;) 5 (;@1;) 5 (;@1;) 2 (;@4;) 5 (;@1;)
              end
              i32.const 0
              i32.const 0
              i32.store8 offset=1122
              return
            end
            i32.const 0
            i32.const 0
            i32.store8 offset=1123
            return
          end
          i32.const 0
          i32.const 0
          i32.store8 offset=1125
          return
        end
        i32.const 0
        i32.const 0
        i32.store offset=18748
        i32.const 0
        i32.const 0
        i32.store8 offset=18752
        return
      end
      i32.const 0
      i32.const 1
      i32.store8 offset=1121
      i32.const 0
      i64.const 3006477107200
      i64.store offset=1096
      i32.const 0
      i32.const 0
      i32.store8 offset=16436
      i32.const 0
      i32.const 0
      i32.store8 offset=17233
      i32.const 0
      i32.const 0
      i32.store8 offset=17193
      i32.const 0
      i32.const 0
      i32.store8 offset=17153
      i32.const 0
      i32.const 0
      i32.store8 offset=17113
      i32.const 0
      i32.const 0
      i32.store8 offset=17073
      i32.const 0
      i32.const 0
      i32.store8 offset=17033
      i32.const 0
      i32.const 0
      i32.store8 offset=16993
      i32.const 0
      i32.const 0
      i32.store8 offset=16953
      i32.const 0
      i32.const 0
      i32.store8 offset=16913
      i32.const 0
      i32.const 0
      i32.store8 offset=16873
      i32.const 0
      i32.const 0
      i32.store8 offset=16833
      i32.const 0
      i32.const 0
      i32.store8 offset=16793
      i32.const 0
      i32.const 0
      i32.store8 offset=16753
      i32.const 0
      i32.const 0
      i32.store8 offset=16713
      i32.const 0
      i32.const 0
      i32.store8 offset=16673
      i32.const 0
      i32.const 0
      i32.store8 offset=16633
      i32.const 0
      i32.const 0
      i32.store8 offset=16593
      i32.const 0
      i32.const 0
      i32.store8 offset=16553
      i32.const 0
      i32.const 0
      i32.store8 offset=16513
      i32.const 0
      i32.const 0
      i32.store8 offset=16473
    end)
  (func $init (type 3)
    i32.const 1024
    call $println
    i32.const 1051
    i32.const 1136
    call $request_level)
  (func $get_width (type 5) (result i32)
    i32.const 1250)
  (func $get_height (type 5) (result i32)
    i32.const 750)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 84704))
  (global (;1;) i32 (i32.const 1024))
  (global (;2;) i32 (i32.const 19168))
  (global (;3;) i32 (i32.const 1024))
  (global (;4;) i32 (i32.const 84704))
  (global (;5;) i32 (i32.const 0))
  (global (;6;) i32 (i32.const 1))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func $__wasm_call_ctors))
  (export "step" (func $step))
  (export "render" (func $render))
  (export "game_keydown" (func $game_keydown))
  (export "game_keyup" (func $game_keyup))
  (export "init" (func $init))
  (export "get_width" (func $get_width))
  (export "get_height" (func $get_height))
  (export "__dso_handle" (global 1))
  (export "__data_end" (global 2))
  (export "__global_base" (global 3))
  (export "__heap_base" (global 4))
  (export "__memory_base" (global 5))
  (export "__table_base" (global 6))
  (data $.rodata (i32.const 1024) "initialized\00LOST\00SHOOT\00WON\00level1\00You lost!\0a(r to restart)\00You won!\00")
  (data $.data (i32.const 1096) "\00\00\00\00\bc\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\00\00\00\00\00\00"))
