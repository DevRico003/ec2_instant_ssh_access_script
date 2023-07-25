# EC2 Instance SSH Access Script

This repository contains a bash script designed to facilitate SSH access to an EC2 instance. It copies a key file to your SSH directory, renames it with a unique identifier based on the instance's IP address, sets the appropriate permissions, and initiates the SSH connection.

## Prerequisites

1. You need to have an EC2 instance running.
2. The EC2 instance should be properly configured to allow SSH connections.
3. You need to have the private key file (.pem) for the EC2 instance saved in your `~/Downloads` directory.
4. The script assumes that the private key file is named `key.pem` and your user on the EC2 instance is `ec2-user`. If these are different, you need to modify the script accordingly.

## Usage

You can run the script by providing the IP address of your EC2 instance as a command-line argument. Here's an example:

```bash
./script.sh <EC2-instance-IP-address>
```

Replace `<EC2-instance-IP-address>` with the actual IP address of your EC2 instance.

The script will:

- Copy your `key.pem` file from the `~/Downloads` directory to the `~/.ssh` directory.
- Rename the key file to `key_<EC2-instance-IP-address>.pem`.
- Set the permissions of the key file to `400` to comply with the SSH requirements.
- Initiate an SSH connection to the EC2 instance using the newly copied and renamed key file.

## Troubleshooting

If you encounter any problems:

- Verify that the EC2 instance is running and that the IP address is correct.
- Make sure the EC2 instance is configured to allow SSH connections.
- Ensure that the `key.pem` file is in the `~/Downloads` directory and that its name is correct.
- Check the permissions of the `~/.ssh` directory and the key file.

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.