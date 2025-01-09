<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Task Completion Animation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Overlay Notification */
        .success-notification {
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: white;
            border-radius: 12px;
            padding: 30px 40px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            text-align: center;
            display: none; /* Hidden by default */
            animation: fadeInScale 0.6s ease-out forwards;
        }

        /* Checkmark Circle */
        .checkmark-circle {
            width: 60px;
            height: 60px;
            background-color: #4CAF50;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0 auto 15px;
        }

        .checkmark-circle svg {
            width: 30px;
            height: 30px;
            fill: white;
        }

        /* Success Message */
        .success-message {
            font-size: 18px;
            color: #333;
        }

        /* Keyframes for the Animation */
        @keyframes fadeInScale {
            0% {
                transform: translate(-50%, -50%) scale(0.5);
                opacity: 0;
            }
            100% {
                transform: translate(-50%, -50%) scale(1);
                opacity: 1;
            }
        }

        @keyframes fadeOut {
            0% {
                opacity: 1;
            }
            100% {
                opacity: 0;
                transform: translate(-50%, -50%) scale(0.5);
            }
        }
    </style>
</head>
<body>
    <!-- Success Notification -->
    <div class="success-notification" id="successNotification">
        <div class="checkmark-circle">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                <path d="M9 16.17l-3.59-3.58L4 14l5 5L20 8l-1.41-1.41z" />
            </svg>
        </div>
        <div class="success-message"><h>${data.name}</h>
          <p>Your Data Successfully Updated</p></div>
    </div>

    <script>
        // Simulate Task Completion
        function completeTask() {
            const notification = document.getElementById('successNotification');

            // Show the notification with animation
            notification.style.display = 'block';

            // Hide the notification after 3 seconds
            
              //  notification.style.animation = 'fadeOut 0.6s ease-out forwards';
           

            // Remove from view after fade-out
            
              //  notification.style.display = 'none';
               // notification.style.animation = ''; // Reset for reuse
           
        }

        // Simulate task completion after 2 seconds
        setTimeout(completeTask, 2000); // Adjust timing as needed
    </script>
</body>
</html>
