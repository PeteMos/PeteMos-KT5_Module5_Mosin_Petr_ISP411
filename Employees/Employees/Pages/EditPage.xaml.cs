using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Employees.Pages
{
    /// <summary>
    /// Логика взаимодействия для AddEditPage.xaml
    /// </summary>
    public partial class EditPage : Page
    {
        public string AddUser = "default";
        public Data.Emp _currentUser = new Data.Emp();
        public EditPage(Data.Emp empl)
        {
            if (empl != null)
            {
                _currentUser = empl;
                AddUser = "add";
            }
            else
            {
            }
            DataContext = _currentUser;

            InitializeComponent();
            init();
        }
        public void init()
        {
            try
            {
                IdLabel.Visibility = Visibility.Hidden;
                IdTextBox.Visibility = Visibility.Hidden;
                RoleComboBox.ItemsSource = Data.EmplEntities.GetContext().Role.ToList();
                GenderComboBox.ItemsSource = Data.EmplEntities.GetContext().Gender.ToList();

                if (AddUser == "add")
                {
                    LastnameTextBox.Text = string.Empty;
                    FirstnameTextBox.Text = string.Empty;
                    PatronymicnameTextBox.Text = string.Empty;
                    PhoneTextBox.Text = string.Empty;
                    EmailTextBox.Text = string.Empty;
                    LoginTextBox.Text = string.Empty;
                    PasswordTextBox.Password = string.Empty;
                    ConfirmPasswordTextBox.Password = string.Empty;

                    IdTextBox.Text = Data.EmplEntities.GetContext().Emp.Max(e => e.Id + 1).ToString();
                }
                else
                {
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString(), "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
            }

        }

        private void SaveButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                StringBuilder errors = new StringBuilder();

                if (string.IsNullOrEmpty(LastnameTextBox.Text))
                {
                    errors.AppendLine("Заполните фамилию");
                }
                if (string.IsNullOrEmpty(FirstnameTextBox.Text))
                {
                    errors.AppendLine("Заполните имя");
                }
                if (string.IsNullOrEmpty(PatronymicnameTextBox.Text))
                {
                    errors.AppendLine("Заполните отчество");
                }
                if (string.IsNullOrEmpty(RoleComboBox.Text))
                {
                    errors.AppendLine("Выберите должность");
                }
                if (string.IsNullOrEmpty(PhoneTextBox.Text))
                {
                    errors.AppendLine("Заполните номер телефона");
                }
                if (string.IsNullOrEmpty(GenderComboBox.Text))
                {
                    errors.AppendLine("Выберите пол");
                }
                if (string.IsNullOrEmpty(EmailTextBox.Text))
                {
                    errors.AppendLine("Заполните email");
                }
                if (string.IsNullOrEmpty(PasswordTextBox.Password))
                {
                    errors.AppendLine("Заполните пароль");
                }
                if (string.IsNullOrEmpty(ConfirmPasswordTextBox.Password))
                {
                    errors.AppendLine("Потвердите пароль");
                }
                if (PasswordTextBox.Password != ConfirmPasswordTextBox.Password)
                {
                    errors.AppendLine("Пароли не совпадают!");
                }

                if (DatebirthPicker.SelectedDate.HasValue)
                {
                    _currentUser.DateOfBirth = DatebirthPicker.SelectedDate.Value;
                }
                else
                {
                    MessageBox.Show("Пожалуйста, выберите дату рождения.", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }
                if (errors.Length > 0)
                {
                    MessageBox.Show(errors.ToString(), "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }

                var selectedRole = Data.EmplEntities.GetContext().Role.ToList();
                var selectedGender = Data.EmplEntities.GetContext().Gender.ToList();

                _currentUser.LastName = LastnameTextBox.Text;
                _currentUser.FirstName = FirstnameTextBox.Text;
                _currentUser.Patronymic = PatronymicnameTextBox.Text;
                _currentUser.Phone = PhoneTextBox.Text;
                _currentUser.Email = EmailTextBox.Text;
                _currentUser.Login = LoginTextBox.Text;
                _currentUser.Password = PasswordTextBox.Password;
                _currentUser.DateOfBirth = (DateTime)DatebirthPicker.SelectedDate;

                if (AddUser == "add")
                {
                    Data.EmplEntities.GetContext().Emp.Add(_currentUser);
                    MessageBox.Show("Пользователь успешно добавлен!", "Успех!", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                Data.EmplEntities.GetContext().SaveChanges();
                Classes.Manager.MainFrame.Navigate(new Pages.ListViewPage());
            }

            catch (Exception errors)
            {
                MessageBox.Show(errors.ToString(), "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new Pages.ListViewPage());
        }
    }
}
