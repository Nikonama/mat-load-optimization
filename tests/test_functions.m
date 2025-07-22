function test_functions()
    % Test suite for load optimization functions
    
    fprintf('Running function tests...\n');
    
    % Test data
    L_test = [100, 150, 120, 180, 200];
    P_test = [50, 60, 55, 70, 80];
    
    % Test evaluate_load
    try
        [peak, cost] = evaluate_load(L_test, P_test);
        assert(peak > 0, 'Peak should be positive');
        assert(cost > 0, 'Cost should be positive');
        fprintf('✓ evaluate_load test passed\n');
    catch ME
        fprintf('✗ evaluate_load test failed: %s\n', ME.message);
    end
    
    % Test APSO_ANFIS
    try
        param.iterations = 10;
        param.particles = 5;
        L_opt = APSO_ANFIS(L_test, P_test, param);
        assert(length(L_opt) == length(L_test), 'Output size mismatch');
        fprintf('✓ APSO_ANFIS test passed\n');
    catch ME
        fprintf('✗ APSO_ANFIS test failed: %s\n', ME.message);
    end
    
    fprintf('All tests completed\n');
end
