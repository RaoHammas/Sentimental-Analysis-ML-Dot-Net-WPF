using System;
using System.Threading.Tasks;
using System.Windows;
using MyMlAppML.Model;

namespace WpfCoreSentimentalAnalysisApp
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private async void BtnPredict_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                ProgressBarPrediction.Visibility = Visibility.Visible;
                TextPositiveResultPercent.Text = 0 +"%";
                TextNegativeResultPercent.Text = 0 + "%";
                BtnPredict.IsEnabled = false;
                var text = BoxText.Text.Trim();
                if (text == "" || text.Length <= 5)
                {
                    MessageBox.Show("Text length is below 5");
                    return;
                }


                ModelInput data = new ModelInput()
                {
                    Tweet = text,
                };

                var predictionResult = await Task.Run(() => ConsumeModel.Predict(data));

                TextPositiveResultPercent.Text = (predictionResult.Score[1] * 100).ToString("F") + "%";
                TextNegativeResultPercent.Text = (predictionResult.Score[0] * 100).ToString("F") + "%";

                TextResultAllDetails.Text = @$"Prediction value : {predictionResult.Prediction} scores: [{String.Join(",", predictionResult.Score)}]";

                if (predictionResult.Prediction == "4")
                {
                    PositiveImage.Visibility = Visibility.Visible;
                    NegativeImage.Visibility = Visibility.Collapsed;
                }
                else
                {
                    PositiveImage.Visibility = Visibility.Collapsed;
                    NegativeImage.Visibility = Visibility.Visible;
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                BtnPredict.IsEnabled = true;
                ProgressBarPrediction.Visibility = Visibility.Collapsed;
            }
        }
    }
}