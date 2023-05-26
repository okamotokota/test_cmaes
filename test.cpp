// ヘッダファイルの読み込み
#include <iostream>
#include <libcmaes/cmaes.h>

// 目的関数の定義
libcmaes::FitFunc func = [](const double *x, const int N)
{
    double val = 0.0;
    for (int i = 0; i < N; ++i)
    {
        val += x[i] * x[i];
    }
    return val;
};

int main(int argc, char *argv[])
{
    // 探索空間の次元
    const int dimension = 10;

    // 初期解の定義
    const std::vector<double> x0(dimension, 10.0);

    // 初期の分散値
    const double sigma = 0.1;

    // 各generationにおける個体数
    const int lambda = 100;

    // 最適化計算の実行
    libcmaes::CMAParameters<> cmaparams(x0, sigma, lambda);
    libcmaes::CMASolutions cmasols = libcmaes::cmaes<>(func, cmaparams);

    // 結果の表示
    std::cout << cmasols << std::endl;

    // 返り値
    return cmasols.run_status();
}