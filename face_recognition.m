function [min_dist output_img_index] = face_recognition(image_path, m, A, eigenfaces, pr_img)
    format long
    R = double(rgb2gray(imread(image_path)));
    [n n] = size(R);
    v = zeros(n * n, 1);
    v = R'(:);
    v = v - m;
    pr_test_img = (eigenfaces') * v;
    min_dist = 137832290;
    output_img_index = 0;
    for i = 1 : 10
      if norm(pr_test_img - pr_img(:, i)) < min_dist
        min_dist = norm(pr_test_img - pr_img(:, i));
        output_img_index = i;
      end
    end
end
