function total_resistance = calculate_total_resistance(n)
    % تعداد حلقه‌ها
    num_loops = n;

    % ایجاد مقاومت‌های تصادفی برای هر حلقه
    resistances = randi([1, 100], 1, num_loops);

    % محاسبه مقاومت معادل برای حلقه‌های موازی
    parallel_resistance = 0;
    for i = 1:num_loops
        parallel_resistance = parallel_resistance + (1 / resistances(i));
    end
    parallel_resistance = 1 / parallel_resistance;

    % اضافه کردن مقاومت‌های سری
    series_resistances = randi([1, 100], 1, num_loops);
    series_resistance = sum(series_resistances);

    % محاسبه مقاومت کلی
    total_resistance = parallel_resistance + series_resistance;

    % نمایش مقاومت‌ها
    disp(['مقاومت‌های تصادفی حلقه‌های موازی: ', num2str(resistances)]);
    disp(['مقاومت معادل حلقه‌های موازی: ', num2str(parallel_resistance)]);
    disp(['مقاومت‌های تصادفی حلقه‌های سری: ', num2str(series_resistances)]);
    disp(['مقاومت کلی شبکه: ', num2str(total_resistance)]);
end

% استفاده از تابع برای محاسبه مقاومت کلی برای n حلقه
n = 5; % مثال برای 5 حلقه
total_resistance = calculate_total_resistance(n);
disp(['مقاومت کلی برای ', num2str(n), ' حلقه: ', num2str(total_resistance)]);
