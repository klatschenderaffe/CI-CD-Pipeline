import { fireEvent, render, screen } from '@testing-library/react';
import App from './App';

test('renders learn react link', () => {
  render(<App />);
  const linkElement = screen.getByText(/learn react/i);
  expect(linkElement).toBeInTheDocument();
});

test('Change-Color-Button should be in the Document', () => {
  render(<App />);
  const buttonElement = screen.getByTestId('change-color-button');
  expect(buttonElement).toBeInTheDocument();
});

test('Change-Color-Button should Change its Color on Click', () => {
  render(<App />);
  const buttonElement = screen.getByTestId('change-color-button');
  expect(buttonElement).toHaveClass('btn-success');
  fireEvent.click(buttonElement);
  expect(buttonElement).toHaveClass('btn-danger');
  fireEvent.click(buttonElement);
  expect(buttonElement).toHaveClass('btn-success');
});
