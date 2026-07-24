document.addEventListener("DOMContentLoaded", function () {
  const ctx = document.getElementById('attendanceChart').getContext('2d');

  new Chart(ctx, {
    type: 'line',
    data: {
      labels: ['Week 1', 'Week 2', 'Week 3', 'Week 4', 'Week 5', 'Week 6'],
      datasets: [
        {
          label: 'Overall Attendance (%)',
          data: [90, 88, 85, 80, 83, 82],
          borderColor: '#2563eb',
          backgroundColor: 'rgba(37, 99, 235, 0.1)',
          fill: true,
          tension: 0.3
        },
        {
          label: 'Java Attendance (%)',
          data: [85, 80, 75, 70, 68, 69],
          borderColor: '#ef4444',
          backgroundColor: 'transparent',
          borderDash: [5, 5],
          tension: 0.3
        }
      ]
    },
    options: {
      responsive: true,
      scales: {
        y: {
          min: 50,
          max: 100,
          ticks: {
            callback: function (value) {
              return value + '%';
            }
          }
        }
      }
    }
  });
});